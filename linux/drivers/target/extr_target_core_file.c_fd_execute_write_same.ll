; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_execute_write_same.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_execute_write_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, %struct.TYPE_4__*, %struct.se_device*, i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.se_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fd_dev = type { i32 }
%struct.iov_iter = type { i32 }
%struct.bio_vec = type { i64, i32, i32 }

@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"WRITE_SAME: Protection information with FILEIO backends not supported\0A\00", align 1
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"WRITE_SAME: Illegal SGL t_data_nents: %u length: %u block_size: %u\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"vfs_iter_write() returned %zd for write same\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @fd_execute_write_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_execute_write_same(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca %struct.fd_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iov_iter, align 4
  %9 = alloca %struct.bio_vec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %13 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %13, i32 0, i32 3
  %15 = load %struct.se_device*, %struct.se_device** %14, align 8
  store %struct.se_device* %15, %struct.se_device** %4, align 8
  %16 = load %struct.se_device*, %struct.se_device** %4, align 8
  %17 = call %struct.fd_dev* @FD_DEV(%struct.se_device* %16)
  store %struct.fd_dev* %17, %struct.fd_dev** %5, align 8
  %18 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.se_device*, %struct.se_device** %4, align 8
  %22 = getelementptr inbounds %struct.se_device, %struct.se_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %20, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %27 = call i32 @sbc_get_write_same_sectors(%struct.se_cmd* %26)
  store i32 %27, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %1
  %31 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %32 = load i32, i32* @SAM_STAT_GOOD, align 4
  %33 = call i32 @target_complete_cmd(%struct.se_cmd* %31, i32 %32)
  store i32 0, i32* %2, align 4
  br label %161

34:                                               ; preds = %1
  %35 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %41, i32* %2, align 4
  br label %161

42:                                               ; preds = %34
  %43 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %44 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %62, label %47

47:                                               ; preds = %42
  %48 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %49 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %55 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %54, i32 0, i32 3
  %56 = load %struct.se_device*, %struct.se_device** %55, align 8
  %57 = getelementptr inbounds %struct.se_device, %struct.se_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ne i64 %53, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %47, %42
  %63 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %64 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %67 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %73 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %72, i32 0, i32 3
  %74 = load %struct.se_device*, %struct.se_device** %73, align 8
  %75 = getelementptr inbounds %struct.se_device, %struct.se_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %65, i64 %71, i32 %77)
  %79 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %79, i32* %2, align 4
  br label %161

80:                                               ; preds = %47
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.bio_vec* @kcalloc(i32 %81, i32 16, i32 %82)
  store %struct.bio_vec* %83, %struct.bio_vec** %9, align 8
  %84 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %85 = icmp ne %struct.bio_vec* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %87, i32* %2, align 4
  br label %161

88:                                               ; preds = %80
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %132, %88
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %135

93:                                               ; preds = %89
  %94 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %95 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 0
  %98 = call i32 @sg_page(%struct.TYPE_4__* %97)
  %99 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %99, i64 %101
  %103 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %102, i32 0, i32 2
  store i32 %98, i32* %103, align 4
  %104 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %105 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %111 = load i32, i32* %11, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %110, i64 %112
  %114 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %113, i32 0, i32 0
  store i64 %109, i64* %114, align 8
  %115 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %116 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %115, i32 0, i32 2
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %122 = load i32, i32* %11, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %121, i64 %123
  %125 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %124, i32 0, i32 1
  store i32 %120, i32* %125, align 8
  %126 = load %struct.se_device*, %struct.se_device** %4, align 8
  %127 = getelementptr inbounds %struct.se_device, %struct.se_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %10, align 4
  %131 = add i32 %130, %129
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %93
  %133 = load i32, i32* %11, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %89

135:                                              ; preds = %89
  %136 = load i32, i32* @READ, align 4
  %137 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @iov_iter_bvec(%struct.iov_iter* %8, i32 %136, %struct.bio_vec* %137, i32 %138, i32 %139)
  %141 = load %struct.fd_dev*, %struct.fd_dev** %5, align 8
  %142 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @vfs_iter_write(i32 %143, %struct.iov_iter* %8, i32* %6, i32 0)
  store i32 %144, i32* %12, align 4
  %145 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %146 = call i32 @kfree(%struct.bio_vec* %145)
  %147 = load i32, i32* %12, align 4
  %148 = icmp ult i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %135
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %149, %135
  %154 = load i32, i32* %12, align 4
  %155 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %156, i32* %2, align 4
  br label %161

157:                                              ; preds = %149
  %158 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %159 = load i32, i32* @SAM_STAT_GOOD, align 4
  %160 = call i32 @target_complete_cmd(%struct.se_cmd* %158, i32 %159)
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %157, %153, %86, %62, %39, %30
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.fd_dev* @FD_DEV(%struct.se_device*) #1

declare dso_local i32 @sbc_get_write_same_sectors(%struct.se_cmd*) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.bio_vec* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sg_page(%struct.TYPE_4__*) #1

declare dso_local i32 @iov_iter_bvec(%struct.iov_iter*, i32, %struct.bio_vec*, i32, i32) #1

declare dso_local i32 @vfs_iter_write(i32, %struct.iov_iter*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.bio_vec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
