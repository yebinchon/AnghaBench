; ModuleID = '/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_read_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_read_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fs_context = type { i32 }
%struct.cramfs_super = type { i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cramfs_sb_info = type { i32, i64, i32, i64, i64 }

@SB_SILENT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@read_mutex = common dso_local global i32 0, align 4
@CRAMFS_MAGIC = common dso_local global i64 0, align 8
@CRAMFS_MAGIC_WEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"cramfs: wrong endianness\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"cramfs: wrong magic\00", align 1
@CRAMFS_SUPPORTED_FLAGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"cramfs: unsupported filesystem features\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"cramfs: root is not a directory\00", align 1
@CRAMFS_FLAG_FSID_VERSION_2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"cramfs: empty filesystem\00", align 1
@CRAMFS_FLAG_SHIFTED_ROOT_OFFSET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"cramfs: bad root offset %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*, %struct.cramfs_super*)* @cramfs_read_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cramfs_read_super(%struct.super_block* %0, %struct.fs_context* %1, %struct.cramfs_super* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.fs_context*, align 8
  %7 = alloca %struct.cramfs_super*, align 8
  %8 = alloca %struct.cramfs_sb_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.fs_context* %1, %struct.fs_context** %6, align 8
  store %struct.cramfs_super* %2, %struct.cramfs_super** %7, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.cramfs_sb_info* @CRAMFS_SB(%struct.super_block* %11)
  store %struct.cramfs_sb_info* %12, %struct.cramfs_sb_info** %8, align 8
  %13 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %14 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SB_SILENT, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %8, align 8
  %20 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = call i32 @mutex_lock(i32* @read_mutex)
  %22 = load %struct.cramfs_super*, %struct.cramfs_super** %7, align 8
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = call i32 @cramfs_read(%struct.super_block* %23, i32 0, i32 40)
  %25 = call i32 @memcpy(%struct.cramfs_super* %22, i32 %24, i32 40)
  %26 = call i32 @mutex_unlock(i32* @read_mutex)
  %27 = load %struct.cramfs_super*, %struct.cramfs_super** %7, align 8
  %28 = getelementptr inbounds %struct.cramfs_super, %struct.cramfs_super* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CRAMFS_MAGIC, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %82

32:                                               ; preds = %3
  %33 = load %struct.cramfs_super*, %struct.cramfs_super** %7, align 8
  %34 = getelementptr inbounds %struct.cramfs_super, %struct.cramfs_super* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CRAMFS_MAGIC_WEND, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %43 = call i32 (%struct.fs_context*, i8*, ...) @errorf(%struct.fs_context* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %187

47:                                               ; preds = %32
  %48 = call i32 @mutex_lock(i32* @read_mutex)
  %49 = load %struct.cramfs_super*, %struct.cramfs_super** %7, align 8
  %50 = load %struct.super_block*, %struct.super_block** %5, align 8
  %51 = call i32 @cramfs_read(%struct.super_block* %50, i32 512, i32 40)
  %52 = call i32 @memcpy(%struct.cramfs_super* %49, i32 %51, i32 40)
  %53 = call i32 @mutex_unlock(i32* @read_mutex)
  %54 = load %struct.cramfs_super*, %struct.cramfs_super** %7, align 8
  %55 = getelementptr inbounds %struct.cramfs_super, %struct.cramfs_super* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CRAMFS_MAGIC, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %47
  %60 = load %struct.cramfs_super*, %struct.cramfs_super** %7, align 8
  %61 = getelementptr inbounds %struct.cramfs_super, %struct.cramfs_super* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CRAMFS_MAGIC_WEND, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %70 = call i32 (%struct.fs_context*, i8*, ...) @errorf(%struct.fs_context* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %78

71:                                               ; preds = %65, %59
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %76 = call i32 (%struct.fs_context*, i8*, ...) @errorf(%struct.fs_context* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %68
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %187

81:                                               ; preds = %47
  br label %82

82:                                               ; preds = %81, %3
  %83 = load %struct.cramfs_super*, %struct.cramfs_super** %7, align 8
  %84 = getelementptr inbounds %struct.cramfs_super, %struct.cramfs_super* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CRAMFS_SUPPORTED_FLAGS, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %92 = call i32 (%struct.fs_context*, i8*, ...) @errorf(%struct.fs_context* %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %187

95:                                               ; preds = %82
  %96 = load %struct.cramfs_super*, %struct.cramfs_super** %7, align 8
  %97 = getelementptr inbounds %struct.cramfs_super, %struct.cramfs_super* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @S_ISDIR(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %95
  %103 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %104 = call i32 (%struct.fs_context*, i8*, ...) @errorf(%struct.fs_context* %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %187

107:                                              ; preds = %95
  %108 = load %struct.cramfs_super*, %struct.cramfs_super** %7, align 8
  %109 = getelementptr inbounds %struct.cramfs_super, %struct.cramfs_super* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, 365
  store i32 %112, i32* %110, align 8
  %113 = load %struct.cramfs_super*, %struct.cramfs_super** %7, align 8
  %114 = getelementptr inbounds %struct.cramfs_super, %struct.cramfs_super* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 2
  %118 = sext i32 %117 to i64
  store i64 %118, i64* %9, align 8
  %119 = load %struct.cramfs_super*, %struct.cramfs_super** %7, align 8
  %120 = getelementptr inbounds %struct.cramfs_super, %struct.cramfs_super* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @CRAMFS_FLAG_FSID_VERSION_2, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %107
  %126 = load %struct.cramfs_super*, %struct.cramfs_super** %7, align 8
  %127 = getelementptr inbounds %struct.cramfs_super, %struct.cramfs_super* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %8, align 8
  %130 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.cramfs_super*, %struct.cramfs_super** %7, align 8
  %132 = getelementptr inbounds %struct.cramfs_super, %struct.cramfs_super* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %8, align 8
  %136 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %135, i32 0, i32 4
  store i64 %134, i64* %136, align 8
  %137 = load %struct.cramfs_super*, %struct.cramfs_super** %7, align 8
  %138 = getelementptr inbounds %struct.cramfs_super, %struct.cramfs_super* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %8, align 8
  %142 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %141, i32 0, i32 3
  store i64 %140, i64* %142, align 8
  br label %150

143:                                              ; preds = %107
  %144 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %8, align 8
  %145 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %144, i32 0, i32 0
  store i32 268435456, i32* %145, align 8
  %146 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %8, align 8
  %147 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %146, i32 0, i32 4
  store i64 0, i64* %147, align 8
  %148 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %8, align 8
  %149 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %148, i32 0, i32 3
  store i64 0, i64* %149, align 8
  br label %150

150:                                              ; preds = %143, %125
  %151 = load %struct.cramfs_super*, %struct.cramfs_super** %7, align 8
  %152 = getelementptr inbounds %struct.cramfs_super, %struct.cramfs_super* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %8, align 8
  %155 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  %156 = load %struct.cramfs_super*, %struct.cramfs_super** %7, align 8
  %157 = getelementptr inbounds %struct.cramfs_super, %struct.cramfs_super* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %8, align 8
  %160 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  %161 = load i64, i64* %9, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %150
  %164 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %165 = call i32 @infof(%struct.fs_context* %164, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %186

166:                                              ; preds = %150
  %167 = load %struct.cramfs_super*, %struct.cramfs_super** %7, align 8
  %168 = getelementptr inbounds %struct.cramfs_super, %struct.cramfs_super* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @CRAMFS_FLAG_SHIFTED_ROOT_OFFSET, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %185, label %173

173:                                              ; preds = %166
  %174 = load i64, i64* %9, align 8
  %175 = icmp ne i64 %174, 40
  br i1 %175, label %176, label %185

176:                                              ; preds = %173
  %177 = load i64, i64* %9, align 8
  %178 = icmp ne i64 %177, 552
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %181 = load i64, i64* %9, align 8
  %182 = call i32 (%struct.fs_context*, i8*, ...) @errorf(%struct.fs_context* %180, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %181)
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %4, align 4
  br label %187

185:                                              ; preds = %176, %173, %166
  br label %186

186:                                              ; preds = %185, %163
  store i32 0, i32* %4, align 4
  br label %187

187:                                              ; preds = %186, %179, %102, %90, %78, %44
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local %struct.cramfs_sb_info* @CRAMFS_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.cramfs_super*, i32, i32) #1

declare dso_local i32 @cramfs_read(%struct.super_block*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @errorf(%struct.fs_context*, i8*, ...) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @infof(%struct.fs_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
