; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_close_sessions.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_close_sessions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, i32, i32, i32, i32, i64*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ceph_options* }
%struct.ceph_options = type { i32 }
%struct.ceph_mds_session = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"close_sessions\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"waiting for sessions to close\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"stopped\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_mdsc_close_sessions(%struct.ceph_mds_client* %0) #0 {
  %2 = alloca %struct.ceph_mds_client*, align 8
  %3 = alloca %struct.ceph_options*, align 8
  %4 = alloca %struct.ceph_mds_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %2, align 8
  %7 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %8 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %7, i32 0, i32 7
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  store %struct.ceph_options* %13, %struct.ceph_options** %3, align 8
  store i32 0, i32* %6, align 4
  %14 = call i32 @dout(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %16 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %15, i32 0, i32 3
  %17 = call i32 @mutex_lock(i32* %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %54, %1
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %21 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %18
  %25 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.ceph_mds_session* @__ceph_lookup_mds_session(%struct.ceph_mds_client* %25, i32 %26)
  store %struct.ceph_mds_session* %27, %struct.ceph_mds_session** %4, align 8
  %28 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %29 = icmp ne %struct.ceph_mds_session* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %54

31:                                               ; preds = %24
  %32 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %33 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %32, i32 0, i32 3
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %36 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %39 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %40 = call i64 @__close_session(%struct.ceph_mds_client* %38, %struct.ceph_mds_session* %39)
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %31
  %46 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %47 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %50 = call i32 @ceph_put_mds_session(%struct.ceph_mds_session* %49)
  %51 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %52 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %51, i32 0, i32 3
  %53 = call i32 @mutex_lock(i32* %52)
  br label %54

54:                                               ; preds = %45, %30
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %18

57:                                               ; preds = %18
  %58 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %59 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %58, i32 0, i32 3
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = call i32 @dout(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %63 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @done_closing_sessions(%struct.ceph_mds_client* %65, i32 %66)
  %68 = load %struct.ceph_options*, %struct.ceph_options** %3, align 8
  %69 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ceph_timeout_jiffies(i32 %70)
  %72 = call i32 @wait_event_timeout(i32 %64, i32 %67, i32 %71)
  %73 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %74 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %73, i32 0, i32 3
  %75 = call i32 @mutex_lock(i32* %74)
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %120, %57
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %79 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %123

82:                                               ; preds = %76
  %83 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %84 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %83, i32 0, i32 5
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %119

91:                                               ; preds = %82
  %92 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %93 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %92, i32 0, i32 5
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = call %struct.ceph_mds_session* @get_session(i64 %98)
  store %struct.ceph_mds_session* %99, %struct.ceph_mds_session** %4, align 8
  %100 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %101 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %102 = call i32 @__unregister_session(%struct.ceph_mds_client* %100, %struct.ceph_mds_session* %101)
  %103 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %104 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %103, i32 0, i32 3
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %107 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %106, i32 0, i32 0
  %108 = call i32 @mutex_lock(i32* %107)
  %109 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %110 = call i32 @remove_session_caps(%struct.ceph_mds_session* %109)
  %111 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %112 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %111, i32 0, i32 0
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %115 = call i32 @ceph_put_mds_session(%struct.ceph_mds_session* %114)
  %116 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %117 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %116, i32 0, i32 3
  %118 = call i32 @mutex_lock(i32* %117)
  br label %119

119:                                              ; preds = %91, %82
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %76

123:                                              ; preds = %76
  %124 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %125 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %124, i32 0, i32 4
  %126 = call i32 @list_empty(i32* %125)
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 @WARN_ON(i32 %129)
  %131 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %132 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %131, i32 0, i32 3
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %135 = call i32 @ceph_cleanup_snapid_map(%struct.ceph_mds_client* %134)
  %136 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %137 = call i32 @ceph_cleanup_empty_realms(%struct.ceph_mds_client* %136)
  %138 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %139 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %138, i32 0, i32 2
  %140 = call i32 @cancel_work_sync(i32* %139)
  %141 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %142 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %141, i32 0, i32 1
  %143 = call i32 @cancel_delayed_work_sync(i32* %142)
  %144 = call i32 @dout(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dout(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ceph_mds_session* @__ceph_lookup_mds_session(%struct.ceph_mds_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @__close_session(%struct.ceph_mds_client*, %struct.ceph_mds_session*) #1

declare dso_local i32 @ceph_put_mds_session(%struct.ceph_mds_session*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @done_closing_sessions(%struct.ceph_mds_client*, i32) #1

declare dso_local i32 @ceph_timeout_jiffies(i32) #1

declare dso_local %struct.ceph_mds_session* @get_session(i64) #1

declare dso_local i32 @__unregister_session(%struct.ceph_mds_client*, %struct.ceph_mds_session*) #1

declare dso_local i32 @remove_session_caps(%struct.ceph_mds_session*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ceph_cleanup_snapid_map(%struct.ceph_mds_client*) #1

declare dso_local i32 @ceph_cleanup_empty_realms(%struct.ceph_mds_client*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
