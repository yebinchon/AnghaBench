; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_chp_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_chp_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chp_id = type { i32, i32 }
%struct.channel_path = type { i32 }
%struct.chp_link = type { %struct.chp_id }

@.str = private unnamed_addr constant [12 x i8] c"chpr%x.%02x\00", align 1
@s390_subchannel_remove_chpid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chsc_chp_offline(i64 %0) #0 {
  %2 = alloca %struct.chp_id, align 4
  %3 = alloca %struct.channel_path*, align 8
  %4 = alloca %struct.chp_link, align 4
  %5 = alloca [15 x i8], align 1
  %6 = bitcast %struct.chp_id* %2 to i64*
  store i64 %0, i64* %6, align 4
  %7 = bitcast %struct.chp_id* %2 to i64*
  %8 = load i64, i64* %7, align 4
  %9 = call %struct.channel_path* @chpid_to_chp(i64 %8)
  store %struct.channel_path* %9, %struct.channel_path** %3, align 8
  %10 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %11 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %2, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %2, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %14)
  %16 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %17 = call i32 @CIO_TRACE_EVENT(i32 2, i8* %16)
  %18 = bitcast %struct.chp_id* %2 to i64*
  %19 = load i64, i64* %18, align 4
  %20 = call i64 @chp_get_status(i64 %19)
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %39

23:                                               ; preds = %1
  %24 = call i32 @memset(%struct.chp_link* %4, i32 0, i32 8)
  %25 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %4, i32 0, i32 0
  %26 = bitcast %struct.chp_id* %25 to i8*
  %27 = bitcast %struct.chp_id* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 8, i1 false)
  %28 = call i32 (...) @css_wait_for_slow_path()
  %29 = load %struct.channel_path*, %struct.channel_path** %3, align 8
  %30 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.channel_path*, %struct.channel_path** %3, align 8
  %33 = call i32 @chp_update_desc(%struct.channel_path* %32)
  %34 = load %struct.channel_path*, %struct.channel_path** %3, align 8
  %35 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* @s390_subchannel_remove_chpid, align 4
  %38 = call i32 @for_each_subchannel_staged(i32 %37, i32* null, %struct.chp_link* %4)
  br label %39

39:                                               ; preds = %23, %22
  ret void
}

declare dso_local %struct.channel_path* @chpid_to_chp(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i64 @chp_get_status(i64) #1

declare dso_local i32 @memset(%struct.chp_link*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @css_wait_for_slow_path(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @chp_update_desc(%struct.channel_path*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @for_each_subchannel_staged(i32, i32*, %struct.chp_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
