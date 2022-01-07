; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_oradax.c_dax_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_oradax.c_dax_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.dax_ctx* }
%struct.dax_ctx = type { %struct.dax_ctx*, i32, i8*, %struct.dax_ctx*, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DAX_MAX_CCBS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ctx->ccb_buf=0x%p, ccb_buf_ra=0x%llx\00", align 1
@DAX_MMAP_LEN = common dso_local global i32 0, align 4
@DAX_CA_ELEMS = common dso_local global i32 0, align 4
@CCA_STAT_COMPLETED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"ctx=0x%p, ctx->ca_buf=0x%p, ca_buf_ra=0x%llx\00", align 1
@current = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dax_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dax_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dax_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store %struct.dax_ctx* null, %struct.dax_ctx** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kzalloc(i32 48, i32 %8)
  %10 = bitcast i8* %9 to %struct.dax_ctx*
  store %struct.dax_ctx* %10, %struct.dax_ctx** %6, align 8
  %11 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %12 = icmp eq %struct.dax_ctx* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %96

14:                                               ; preds = %2
  %15 = load i32, i32* @DAX_MAX_CCBS, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.dax_ctx* @kcalloc(i32 %15, i32 4, i32 %16)
  %18 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %18, i32 0, i32 0
  store %struct.dax_ctx* %17, %struct.dax_ctx** %19, align 8
  %20 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %20, i32 0, i32 0
  %22 = load %struct.dax_ctx*, %struct.dax_ctx** %21, align 8
  %23 = icmp eq %struct.dax_ctx* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %96

25:                                               ; preds = %14
  %26 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %26, i32 0, i32 0
  %28 = load %struct.dax_ctx*, %struct.dax_ctx** %27, align 8
  %29 = call i8* @virt_to_phys(%struct.dax_ctx* %28)
  %30 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %32, i32 0, i32 0
  %34 = load %struct.dax_ctx*, %struct.dax_ctx** %33, align 8
  %35 = bitcast %struct.dax_ctx* %34 to i8*
  %36 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %36, i32 0, i32 5
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i8*, i8*, i8*, ...) @dax_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %38)
  %40 = load i32, i32* @DAX_MMAP_LEN, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kzalloc(i32 %40, i32 %41)
  %43 = bitcast i8* %42 to %struct.dax_ctx*
  %44 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %44, i32 0, i32 3
  store %struct.dax_ctx* %43, %struct.dax_ctx** %45, align 8
  %46 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %46, i32 0, i32 3
  %48 = load %struct.dax_ctx*, %struct.dax_ctx** %47, align 8
  %49 = icmp eq %struct.dax_ctx* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %25
  br label %91

51:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %65, %51
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @DAX_CA_ELEMS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32, i32* @CCA_STAT_COMPLETED, align 4
  %58 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %58, i32 0, i32 3
  %60 = load %struct.dax_ctx*, %struct.dax_ctx** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %60, i64 %62
  %64 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %63, i32 0, i32 4
  store i32 %57, i32* %64, align 8
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %52

68:                                               ; preds = %52
  %69 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %70 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %69, i32 0, i32 3
  %71 = load %struct.dax_ctx*, %struct.dax_ctx** %70, align 8
  %72 = call i8* @virt_to_phys(%struct.dax_ctx* %71)
  %73 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %74 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %76 = bitcast %struct.dax_ctx* %75 to i8*
  %77 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %78 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %77, i32 0, i32 3
  %79 = load %struct.dax_ctx*, %struct.dax_ctx** %78, align 8
  %80 = bitcast %struct.dax_ctx* %79 to i8*
  %81 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %82 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i8*, i8*, i8*, ...) @dax_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %76, i8* %80, i8* %83)
  %85 = load i32, i32* @current, align 4
  %86 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %87 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %89 = load %struct.file*, %struct.file** %5, align 8
  %90 = getelementptr inbounds %struct.file, %struct.file* %89, i32 0, i32 0
  store %struct.dax_ctx* %88, %struct.dax_ctx** %90, align 8
  store i32 0, i32* %3, align 4
  br label %101

91:                                               ; preds = %50
  %92 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %93 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %92, i32 0, i32 0
  %94 = load %struct.dax_ctx*, %struct.dax_ctx** %93, align 8
  %95 = call i32 @kfree(%struct.dax_ctx* %94)
  br label %96

96:                                               ; preds = %91, %24, %13
  %97 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %98 = call i32 @kfree(%struct.dax_ctx* %97)
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %96, %68
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.dax_ctx* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @virt_to_phys(%struct.dax_ctx*) #1

declare dso_local i32 @dax_dbg(i8*, i8*, i8*, ...) #1

declare dso_local i32 @kfree(%struct.dax_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
