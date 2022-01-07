; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_set_configfs_dev_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_set_configfs_dev_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.rd_dev = type { i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@tokens = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"RAMDISK: Referencing Page Count: %u\0A\00", align 1
@RDF_HAS_PAGE_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"RAMDISK: Setting NULLIO flag: %d\0A\00", align 1
@RDF_NULLIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*, i32)* @rd_set_configfs_dev_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_set_configfs_dev_params(%struct.se_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rd_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.se_device*, %struct.se_device** %5, align 8
  %18 = call %struct.rd_dev* @RD_DEV(%struct.se_device* %17)
  store %struct.rd_dev* %18, %struct.rd_dev** %8, align 8
  %19 = load i32, i32* @MAX_OPT_ARGS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kstrdup(i8* %23, i32 %24)
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %79

31:                                               ; preds = %3
  %32 = load i8*, i8** %11, align 8
  store i8* %32, i8** %9, align 8
  br label %33

33:                                               ; preds = %74, %40, %31
  %34 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %75

36:                                               ; preds = %33
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %33

41:                                               ; preds = %36
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* @tokens, align 4
  %44 = call i32 @match_token(i8* %42, i32 %43, i32* %22)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  switch i32 %45, label %73 [
    i32 128, label %46
    i32 129, label %60
  ]

46:                                               ; preds = %41
  %47 = call i32 @match_int(i32* %22, i32* %14)
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.rd_dev*, %struct.rd_dev** %8, align 8
  %50 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.rd_dev*, %struct.rd_dev** %8, align 8
  %52 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @RDF_HAS_PAGE_COUNT, align 4
  %56 = load %struct.rd_dev*, %struct.rd_dev** %8, align 8
  %57 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %74

60:                                               ; preds = %41
  %61 = call i32 @match_int(i32* %22, i32* %14)
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %74

65:                                               ; preds = %60
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @RDF_NULLIO, align 4
  %69 = load %struct.rd_dev*, %struct.rd_dev** %8, align 8
  %70 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %74

73:                                               ; preds = %41
  br label %74

74:                                               ; preds = %73, %65, %64, %46
  br label %33

75:                                               ; preds = %33
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @kfree(i8* %76)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %79

79:                                               ; preds = %75, %28
  %80 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.rd_dev* @RD_DEV(%struct.se_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @match_token(i8*, i32, i32*) #1

declare dso_local i32 @match_int(i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
