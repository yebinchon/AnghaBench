; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_deregister_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_deregister_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_session = type { i32*, %struct.se_portal_group*, i32 }
%struct.se_portal_group = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"TARGET_CORE[%s]: Deregistered fabric_sess\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_deregister_session(%struct.se_session* %0) #0 {
  %2 = alloca %struct.se_session*, align 8
  %3 = alloca %struct.se_portal_group*, align 8
  %4 = alloca i64, align 8
  store %struct.se_session* %0, %struct.se_session** %2, align 8
  %5 = load %struct.se_session*, %struct.se_session** %2, align 8
  %6 = getelementptr inbounds %struct.se_session, %struct.se_session* %5, i32 0, i32 1
  %7 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  store %struct.se_portal_group* %7, %struct.se_portal_group** %3, align 8
  %8 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %9 = icmp ne %struct.se_portal_group* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.se_session*, %struct.se_session** %2, align 8
  %12 = call i32 @transport_free_session(%struct.se_session* %11)
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %15 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %14, i32 0, i32 1
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.se_session*, %struct.se_session** %2, align 8
  %19 = getelementptr inbounds %struct.se_session, %struct.se_session* %18, i32 0, i32 2
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.se_session*, %struct.se_session** %2, align 8
  %22 = getelementptr inbounds %struct.se_session, %struct.se_session* %21, i32 0, i32 1
  store %struct.se_portal_group* null, %struct.se_portal_group** %22, align 8
  %23 = load %struct.se_session*, %struct.se_session** %2, align 8
  %24 = getelementptr inbounds %struct.se_session, %struct.se_session* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %26 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %25, i32 0, i32 1
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %30 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.se_session*, %struct.se_session** %2, align 8
  %36 = call i32 @transport_free_session(%struct.se_session* %35)
  br label %37

37:                                               ; preds = %13, %10
  ret void
}

declare dso_local i32 @transport_free_session(%struct.se_session*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
