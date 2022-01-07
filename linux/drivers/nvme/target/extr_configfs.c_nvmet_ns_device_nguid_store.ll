; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ns_device_nguid_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ns_device_nguid_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.nvmet_ns = type { i32, i64, %struct.nvmet_subsys* }
%struct.nvmet_subsys = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @nvmet_ns_device_nguid_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_ns_device_nguid_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nvmet_ns*, align 8
  %8 = alloca %struct.nvmet_subsys*, align 8
  %9 = alloca [16 x i32], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.config_item*, %struct.config_item** %4, align 8
  %14 = call %struct.nvmet_ns* @to_nvmet_ns(%struct.config_item* %13)
  store %struct.nvmet_ns* %14, %struct.nvmet_ns** %7, align 8
  %15 = load %struct.nvmet_ns*, %struct.nvmet_ns** %7, align 8
  %16 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %15, i32 0, i32 2
  %17 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %16, align 8
  store %struct.nvmet_subsys* %17, %struct.nvmet_subsys** %8, align 8
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %8, align 8
  %20 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.nvmet_ns*, %struct.nvmet_ns** %7, align 8
  %23 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %12, align 4
  br label %95

29:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %87, %29
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 16
  br i1 %32, label %33, label %90

33:                                               ; preds = %30
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = icmp ugt i8* %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %12, align 4
  br label %95

43:                                               ; preds = %33
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @isxdigit(i8 signext %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @isxdigit(i8 signext %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49, %43
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %12, align 4
  br label %95

58:                                               ; preds = %49
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @hex_to_bin(i8 signext %61)
  %63 = shl i32 %62, 4
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @hex_to_bin(i8 signext %66)
  %68 = or i32 %63, %67
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %70
  store i32 %68, i32* %71, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 45
  br i1 %77, label %83, label %78

78:                                               ; preds = %58
  %79 = load i8*, i8** %10, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 58
  br i1 %82, label %83, label %86

83:                                               ; preds = %78, %58
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %10, align 8
  br label %86

86:                                               ; preds = %83, %78
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %30

90:                                               ; preds = %30
  %91 = load %struct.nvmet_ns*, %struct.nvmet_ns** %7, align 8
  %92 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %91, i32 0, i32 0
  %93 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %94 = call i32 @memcpy(i32* %92, i32* %93, i32 64)
  br label %95

95:                                               ; preds = %90, %55, %40, %26
  %96 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %8, align 8
  %97 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  br label %106

104:                                              ; preds = %95
  %105 = load i64, i64* %6, align 8
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi i64 [ %103, %101 ], [ %105, %104 ]
  %108 = trunc i64 %107 to i32
  ret i32 %108
}

declare dso_local %struct.nvmet_ns* @to_nvmet_ns(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @hex_to_bin(i8 signext) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
