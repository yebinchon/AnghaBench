; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_check_feature_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_check_feature_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"this kernel does not support the %s feature bit%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"this kernel does not support %s bits 0x%llx\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"can't set the %s feature bit%s while mounted\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"can't set %s bits 0x%llx while mounted\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"can't clear the %s feature bit%s while mounted\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"can't clear %s bits 0x%llx while mounted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32, i32, i32, i32, i32, i32)* @check_feature_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_feature_bits(%struct.btrfs_fs_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i8* @btrfs_feature_set_name(i32 %22)
  store i8* %23, i8** %16, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %20, align 4
  %27 = load i32, i32* %12, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %11, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %21, align 4
  %31 = load i32, i32* %20, align 4
  %32 = load i32, i32* %13, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %19, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %7
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %19, align 4
  %40 = call i8* @btrfs_printable_features(i32 %38, i32 %39)
  store i8* %40, i8** %17, align 8
  %41 = load i8*, i8** %17, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %45 = load i8*, i8** %17, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = call i64 @strchr(i8* %46, i8 signext 44)
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %51 = call i32 (%struct.btrfs_fs_info*, i8*, i8*, ...) @btrfs_warn(%struct.btrfs_fs_info* %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %45, i8* %50)
  %52 = load i8*, i8** %17, align 8
  %53 = call i32 @kfree(i8* %52)
  br label %59

54:                                               ; preds = %37
  %55 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %56 = load i8*, i8** %16, align 8
  %57 = load i32, i32* %19, align 4
  %58 = call i32 (%struct.btrfs_fs_info*, i8*, i8*, ...) @btrfs_warn(%struct.btrfs_fs_info* %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %43
  %60 = load i32, i32* @EOPNOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %127

62:                                               ; preds = %7
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %14, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %18, align 4
  %72 = call i8* @btrfs_printable_features(i32 %70, i32 %71)
  store i8* %72, i8** %17, align 8
  %73 = load i8*, i8** %17, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %77 = load i8*, i8** %17, align 8
  %78 = load i8*, i8** %17, align 8
  %79 = call i64 @strchr(i8* %78, i8 signext 44)
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %83 = call i32 (%struct.btrfs_fs_info*, i8*, i8*, ...) @btrfs_warn(%struct.btrfs_fs_info* %76, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %77, i8* %82)
  %84 = load i8*, i8** %17, align 8
  %85 = call i32 @kfree(i8* %84)
  br label %91

86:                                               ; preds = %69
  %87 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %88 = load i8*, i8** %16, align 8
  %89 = load i32, i32* %18, align 4
  %90 = call i32 (%struct.btrfs_fs_info*, i8*, i8*, ...) @btrfs_warn(%struct.btrfs_fs_info* %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %75
  %92 = load i32, i32* @EPERM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  br label %127

94:                                               ; preds = %62
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %15, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %94
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %18, align 4
  %104 = call i8* @btrfs_printable_features(i32 %102, i32 %103)
  store i8* %104, i8** %17, align 8
  %105 = load i8*, i8** %17, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %109 = load i8*, i8** %17, align 8
  %110 = load i8*, i8** %17, align 8
  %111 = call i64 @strchr(i8* %110, i8 signext 44)
  %112 = icmp ne i64 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %115 = call i32 (%struct.btrfs_fs_info*, i8*, i8*, ...) @btrfs_warn(%struct.btrfs_fs_info* %108, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* %109, i8* %114)
  %116 = load i8*, i8** %17, align 8
  %117 = call i32 @kfree(i8* %116)
  br label %123

118:                                              ; preds = %101
  %119 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %120 = load i8*, i8** %16, align 8
  %121 = load i32, i32* %18, align 4
  %122 = call i32 (%struct.btrfs_fs_info*, i8*, i8*, ...) @btrfs_warn(%struct.btrfs_fs_info* %119, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %120, i32 %121)
  br label %123

123:                                              ; preds = %118, %107
  %124 = load i32, i32* @EPERM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %8, align 4
  br label %127

126:                                              ; preds = %94
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %126, %123, %91, %59
  %128 = load i32, i32* %8, align 4
  ret i32 %128
}

declare dso_local i8* @btrfs_feature_set_name(i32) #1

declare dso_local i8* @btrfs_printable_features(i32, i32) #1

declare dso_local i32 @btrfs_warn(%struct.btrfs_fs_info*, i8*, i8*, ...) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
