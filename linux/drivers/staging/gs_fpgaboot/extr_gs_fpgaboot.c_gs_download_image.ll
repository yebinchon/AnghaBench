; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gs_fpgaboot/extr_gs_fpgaboot.c_gs_download_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gs_fpgaboot/extr_gs_fpgaboot.c_gs_download_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpgaimage = type { i32, i64 }

@.str = private unnamed_addr constant [34 x i8] c"unsupported program bus width %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"device init done\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"program done\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"init_b 0\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MAX_WAIT_DONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"init_B %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"fpga download fail\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"download fpgaimage\0A\00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpgaimage*, i32)* @gs_download_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_download_image(%struct.fpgaimage* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpgaimage*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fpgaimage* %0, %struct.fpgaimage** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.fpgaimage*, %struct.fpgaimage** %4, align 8
  %11 = getelementptr inbounds %struct.fpgaimage, %struct.fpgaimage* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %6, align 8
  %14 = load %struct.fpgaimage*, %struct.fpgaimage** %4, align 8
  %15 = getelementptr inbounds %struct.fpgaimage, %struct.fpgaimage* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @xl_supported_prog_bus_width(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %85

25:                                               ; preds = %2
  %26 = call i32 @xl_program_b(i32 1)
  %27 = call i32 @xl_rdwr_b(i32 0)
  %28 = call i32 @xl_csi_b(i32 0)
  %29 = call i32 @xl_program_b(i32 0)
  %30 = call i32 @msleep(i32 20)
  %31 = call i32 @xl_program_b(i32 1)
  br label %32

32:                                               ; preds = %35, %25
  %33 = call i64 (...) @xl_get_init_b()
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %32

36:                                               ; preds = %32
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %49, %36
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @xl_shift_bytes_out(i32 %43, i32* %47)
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %38

53:                                               ; preds = %38
  %54 = call i32 @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i64 (...) @xl_get_init_b()
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %85

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %73, %61
  %63 = call i64 (...) @xl_get_done_b()
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* @MAX_WAIT_DONE, align 4
  %69 = icmp sgt i32 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = call i64 (...) @xl_get_init_b()
  %72 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %71)
  br label %74

73:                                               ; preds = %65
  br label %62

74:                                               ; preds = %70, %62
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @MAX_WAIT_DONE, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %85

82:                                               ; preds = %74
  %83 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %84 = call i32 @xl_shift_cclk(i32 8)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %82, %78, %57, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @xl_supported_prog_bus_width(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @xl_program_b(i32) #1

declare dso_local i32 @xl_rdwr_b(i32) #1

declare dso_local i32 @xl_csi_b(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @xl_get_init_b(...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @xl_shift_bytes_out(i32, i32*) #1

declare dso_local i64 @xl_get_done_b(...) #1

declare dso_local i32 @xl_shift_cclk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
