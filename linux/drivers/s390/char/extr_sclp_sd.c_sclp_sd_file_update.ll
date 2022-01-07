; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_sd.c_sclp_sd_file_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_sd.c_sclp_sd_file_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_sd_file = type { i32, i32, %struct.sclp_sd_data, i32 }
%struct.sclp_sd_data = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"No data is available for the %s data entity\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"A %zu-byte %s data entity was retrieved\0A\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sclp_sd_file*)* @sclp_sd_file_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_sd_file_update(%struct.sclp_sd_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sclp_sd_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sclp_sd_data, align 4
  %6 = alloca i32, align 4
  store %struct.sclp_sd_file* %0, %struct.sclp_sd_file** %3, align 8
  %7 = load %struct.sclp_sd_file*, %struct.sclp_sd_file** %3, align 8
  %8 = getelementptr inbounds %struct.sclp_sd_file, %struct.sclp_sd_file* %7, i32 0, i32 0
  %9 = call i8* @kobject_name(i32* %8)
  store i8* %9, i8** %4, align 8
  %10 = load %struct.sclp_sd_file*, %struct.sclp_sd_file** %3, align 8
  %11 = getelementptr inbounds %struct.sclp_sd_file, %struct.sclp_sd_file* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sclp_sd_store_data(%struct.sclp_sd_data* %5, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %50

26:                                               ; preds = %1
  %27 = load %struct.sclp_sd_file*, %struct.sclp_sd_file** %3, align 8
  %28 = getelementptr inbounds %struct.sclp_sd_file, %struct.sclp_sd_file* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.sclp_sd_file*, %struct.sclp_sd_file** %3, align 8
  %31 = getelementptr inbounds %struct.sclp_sd_file, %struct.sclp_sd_file* %30, i32 0, i32 2
  %32 = call i32 @sclp_sd_data_reset(%struct.sclp_sd_data* %31)
  %33 = load %struct.sclp_sd_file*, %struct.sclp_sd_file** %3, align 8
  %34 = getelementptr inbounds %struct.sclp_sd_file, %struct.sclp_sd_file* %33, i32 0, i32 2
  %35 = bitcast %struct.sclp_sd_data* %34 to i8*
  %36 = bitcast %struct.sclp_sd_data* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  %37 = load %struct.sclp_sd_file*, %struct.sclp_sd_file** %3, align 8
  %38 = getelementptr inbounds %struct.sclp_sd_file, %struct.sclp_sd_file* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = getelementptr inbounds %struct.sclp_sd_data, %struct.sclp_sd_data* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %44)
  %46 = load %struct.sclp_sd_file*, %struct.sclp_sd_file** %3, align 8
  %47 = getelementptr inbounds %struct.sclp_sd_file, %struct.sclp_sd_file* %46, i32 0, i32 0
  %48 = load i32, i32* @KOBJ_CHANGE, align 4
  %49 = call i32 @kobject_uevent(i32* %47, i32 %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %26, %24
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i8* @kobject_name(i32*) #1

declare dso_local i32 @sclp_sd_store_data(%struct.sclp_sd_data*, i32) #1

declare dso_local i32 @pr_info(i8*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sclp_sd_data_reset(%struct.sclp_sd_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
