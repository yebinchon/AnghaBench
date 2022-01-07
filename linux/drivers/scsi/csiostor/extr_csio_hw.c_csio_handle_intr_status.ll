; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_handle_intr_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_handle_intr_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.intr_info = type { i32, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"Fatal %s (0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s (0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csio_handle_intr_status(%struct.csio_hw* %0, i32 %1, %struct.intr_info* %2) #0 {
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.intr_info* %2, %struct.intr_info** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @csio_rd_reg32(%struct.csio_hw* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %67, %3
  %14 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %15 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %70

18:                                               ; preds = %13
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %21 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %67

26:                                               ; preds = %18
  %27 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %28 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %35 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %36 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %40 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %38, %41
  %43 = call i32 @csio_fatal(%struct.csio_hw* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %42)
  br label %61

44:                                               ; preds = %26
  %45 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %46 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %51 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %52 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %56 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %54, %57
  %59 = call i32 @csio_info(%struct.csio_hw* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %53, i32 %58)
  br label %60

60:                                               ; preds = %49, %44
  br label %61

61:                                               ; preds = %60, %31
  %62 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %63 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %61, %25
  %68 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %69 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %68, i32 1
  store %struct.intr_info* %69, %struct.intr_info** %6, align 8
  br label %13

70:                                               ; preds = %13
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @csio_wr_reg32(%struct.csio_hw* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %70
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @csio_rd_reg32(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_fatal(%struct.csio_hw*, i8*, i64, i32) #1

declare dso_local i32 @csio_info(%struct.csio_hw*, i8*, i64, i32) #1

declare dso_local i32 @csio_wr_reg32(%struct.csio_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
