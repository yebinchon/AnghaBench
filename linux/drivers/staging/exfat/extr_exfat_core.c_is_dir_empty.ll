; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_is_dir_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_is_dir_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i64, i64, i32 }
%struct.dentry_t = type { i32 }
%struct.fs_info_t = type { i32, i32, i64, i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 (%struct.dentry_t*)* }
%struct.TYPE_4__ = type { %struct.fs_info_t }

@TYPE_UNUSED = common dso_local global i64 0, align 8
@TYPE_FILE = common dso_local global i64 0, align 8
@TYPE_DIR = common dso_local global i64 0, align 8
@EXFAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_dir_empty(%struct.super_block* %0, %struct.chain_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.chain_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.chain_t, align 8
  %11 = alloca %struct.dentry_t*, align 8
  %12 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.chain_t* %1, %struct.chain_t** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.fs_info_t* %15, %struct.fs_info_t** %12, align 8
  %16 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %17 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @CLUSTER_32(i32 0)
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %23 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %27 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %31 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %35 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 1
  store i64 %36, i64* %37, align 8
  %38 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %39 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 2
  store i32 %40, i32* %41, align 8
  br label %42

42:                                               ; preds = %149, %29
  %43 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @CLUSTER_32(i32 -1)
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %150

47:                                               ; preds = %42
  %48 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %49 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %150

53:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %114, %53
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %117

58:                                               ; preds = %54
  %59 = load %struct.super_block*, %struct.super_block** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %59, %struct.chain_t* %10, i32 %60, i32* null)
  store %struct.dentry_t* %61, %struct.dentry_t** %11, align 8
  %62 = load %struct.dentry_t*, %struct.dentry_t** %11, align 8
  %63 = icmp ne %struct.dentry_t* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %117

65:                                               ; preds = %58
  %66 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %67 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %66, i32 0, i32 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64 (%struct.dentry_t*)*, i64 (%struct.dentry_t*)** %69, align 8
  %71 = load %struct.dentry_t*, %struct.dentry_t** %11, align 8
  %72 = call i64 %70(%struct.dentry_t* %71)
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @TYPE_UNUSED, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %151

77:                                               ; preds = %65
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @TYPE_FILE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* @TYPE_DIR, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %114

86:                                               ; preds = %81, %77
  %87 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %88 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @CLUSTER_32(i32 0)
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %151

93:                                               ; preds = %86
  %94 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %95 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @EXFAT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 0, i32* %3, align 4
  br label %151

100:                                              ; preds = %93
  %101 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %102 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %105 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %100
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  %111 = icmp sgt i32 %110, 2
  br i1 %111, label %112, label %113

112:                                              ; preds = %108, %100
  store i32 0, i32* %3, align 4
  br label %151

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113, %85
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %54

117:                                              ; preds = %64, %54
  %118 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %119 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @CLUSTER_32(i32 0)
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %150

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %128, label %141

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, -1
  store i64 %131, i64* %129, align 8
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %134, align 8
  br label %140

137:                                              ; preds = %128
  %138 = call i64 @CLUSTER_32(i32 -1)
  %139 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 0
  store i64 %138, i64* %139, align 8
  br label %140

140:                                              ; preds = %137, %133
  br label %141

141:                                              ; preds = %140, %124
  %142 = load %struct.super_block*, %struct.super_block** %4, align 8
  %143 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 0
  %146 = call i64 @FAT_read(%struct.super_block* %142, i64 %144, i64* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %150

149:                                              ; preds = %141
  br label %42

150:                                              ; preds = %148, %123, %52, %42
  store i32 1, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %112, %99, %92, %76
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local %struct.dentry_t* @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i32, i32*) #1

declare dso_local i64 @FAT_read(%struct.super_block*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
