; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gs_fpgaboot/extr_gs_fpgaboot.c_gs_fpgaboot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gs_fpgaboot/extr_gs_fpgaboot.c_gs_fpgaboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpgaimage = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"gs_load_image error\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"gs_read_image error\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"gs_set_download_method error\0A\00", align 1
@bus_2byte = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"gs_download_image error\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"gs_release_image error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gs_fpgaboot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_fpgaboot() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpgaimage*, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.fpgaimage* @kmalloc(i32 4, i32 %4)
  store %struct.fpgaimage* %5, %struct.fpgaimage** %3, align 8
  %6 = load %struct.fpgaimage*, %struct.fpgaimage** %3, align 8
  %7 = icmp ne %struct.fpgaimage* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %63

11:                                               ; preds = %0
  %12 = load %struct.fpgaimage*, %struct.fpgaimage** %3, align 8
  %13 = load i32, i32* @file, align 4
  %14 = call i32 @gs_load_image(%struct.fpgaimage* %12, i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %59

19:                                               ; preds = %11
  %20 = load %struct.fpgaimage*, %struct.fpgaimage** %3, align 8
  %21 = call i32 @gs_read_image(%struct.fpgaimage* %20)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %51

26:                                               ; preds = %19
  %27 = load %struct.fpgaimage*, %struct.fpgaimage** %3, align 8
  %28 = call i32 @gs_set_download_method(%struct.fpgaimage* %27)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %51

33:                                               ; preds = %26
  %34 = load %struct.fpgaimage*, %struct.fpgaimage** %3, align 8
  %35 = load i32, i32* @bus_2byte, align 4
  %36 = call i32 @gs_download_image(%struct.fpgaimage* %34, i32 %35)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %51

41:                                               ; preds = %33
  %42 = load %struct.fpgaimage*, %struct.fpgaimage** %3, align 8
  %43 = call i32 @gs_release_image(%struct.fpgaimage* %42)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %59

48:                                               ; preds = %41
  %49 = load %struct.fpgaimage*, %struct.fpgaimage** %3, align 8
  %50 = call i32 @kfree(%struct.fpgaimage* %49)
  store i32 0, i32* %1, align 4
  br label %63

51:                                               ; preds = %39, %31, %24
  %52 = load %struct.fpgaimage*, %struct.fpgaimage** %3, align 8
  %53 = call i32 @gs_release_image(%struct.fpgaimage* %52)
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %51
  br label %59

59:                                               ; preds = %58, %46, %17
  %60 = load %struct.fpgaimage*, %struct.fpgaimage** %3, align 8
  %61 = call i32 @kfree(%struct.fpgaimage* %60)
  %62 = load i32, i32* %2, align 4
  store i32 %62, i32* %1, align 4
  br label %63

63:                                               ; preds = %59, %48, %8
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local %struct.fpgaimage* @kmalloc(i32, i32) #1

declare dso_local i32 @gs_load_image(%struct.fpgaimage*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @gs_read_image(%struct.fpgaimage*) #1

declare dso_local i32 @gs_set_download_method(%struct.fpgaimage*) #1

declare dso_local i32 @gs_download_image(%struct.fpgaimage*, i32) #1

declare dso_local i32 @gs_release_image(%struct.fpgaimage*) #1

declare dso_local i32 @kfree(%struct.fpgaimage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
