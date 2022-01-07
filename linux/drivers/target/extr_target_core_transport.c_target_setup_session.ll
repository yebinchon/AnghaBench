; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_setup_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_setup_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_session = type { i32 }
%struct.se_portal_group = type { i32 }

@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.se_session* @target_setup_session(%struct.se_portal_group* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5, i32 (%struct.se_portal_group*, %struct.se_session*, i8*)* %6) #0 {
  %8 = alloca %struct.se_session*, align 8
  %9 = alloca %struct.se_portal_group*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32 (%struct.se_portal_group*, %struct.se_session*, i8*)*, align 8
  %16 = alloca %struct.se_session*, align 8
  %17 = alloca i32, align 4
  store %struct.se_portal_group* %0, %struct.se_portal_group** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 (%struct.se_portal_group*, %struct.se_session*, i8*)* %6, i32 (%struct.se_portal_group*, %struct.se_session*, i8*)** %15, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %7
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call %struct.se_session* @transport_init_session_tags(i32 %21, i32 %22, i32 %23)
  store %struct.se_session* %24, %struct.se_session** %16, align 8
  br label %28

25:                                               ; preds = %7
  %26 = load i32, i32* %12, align 4
  %27 = call %struct.se_session* @transport_alloc_session(i32 %26)
  store %struct.se_session* %27, %struct.se_session** %16, align 8
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.se_session*, %struct.se_session** %16, align 8
  %30 = call i64 @IS_ERR(%struct.se_session* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load %struct.se_session*, %struct.se_session** %16, align 8
  store %struct.se_session* %33, %struct.se_session** %8, align 8
  br label %76

34:                                               ; preds = %28
  %35 = load %struct.se_portal_group*, %struct.se_portal_group** %9, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = call i32 @core_tpg_check_initiator_node_acl(%struct.se_portal_group* %35, i8* %36)
  %38 = load %struct.se_session*, %struct.se_session** %16, align 8
  %39 = getelementptr inbounds %struct.se_session, %struct.se_session* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.se_session*, %struct.se_session** %16, align 8
  %41 = getelementptr inbounds %struct.se_session, %struct.se_session* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %34
  %45 = load %struct.se_session*, %struct.se_session** %16, align 8
  %46 = call i32 @transport_free_session(%struct.se_session* %45)
  %47 = load i32, i32* @EACCES, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.se_session* @ERR_PTR(i32 %48)
  store %struct.se_session* %49, %struct.se_session** %8, align 8
  br label %76

50:                                               ; preds = %34
  %51 = load i32 (%struct.se_portal_group*, %struct.se_session*, i8*)*, i32 (%struct.se_portal_group*, %struct.se_session*, i8*)** %15, align 8
  %52 = icmp ne i32 (%struct.se_portal_group*, %struct.se_session*, i8*)* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load i32 (%struct.se_portal_group*, %struct.se_session*, i8*)*, i32 (%struct.se_portal_group*, %struct.se_session*, i8*)** %15, align 8
  %55 = load %struct.se_portal_group*, %struct.se_portal_group** %9, align 8
  %56 = load %struct.se_session*, %struct.se_session** %16, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = call i32 %54(%struct.se_portal_group* %55, %struct.se_session* %56, i8* %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load %struct.se_session*, %struct.se_session** %16, align 8
  %63 = call i32 @transport_free_session(%struct.se_session* %62)
  %64 = load i32, i32* %17, align 4
  %65 = call %struct.se_session* @ERR_PTR(i32 %64)
  store %struct.se_session* %65, %struct.se_session** %8, align 8
  br label %76

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66, %50
  %68 = load %struct.se_portal_group*, %struct.se_portal_group** %9, align 8
  %69 = load %struct.se_session*, %struct.se_session** %16, align 8
  %70 = getelementptr inbounds %struct.se_session, %struct.se_session* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.se_session*, %struct.se_session** %16, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = call i32 @transport_register_session(%struct.se_portal_group* %68, i32 %71, %struct.se_session* %72, i8* %73)
  %75 = load %struct.se_session*, %struct.se_session** %16, align 8
  store %struct.se_session* %75, %struct.se_session** %8, align 8
  br label %76

76:                                               ; preds = %67, %61, %44, %32
  %77 = load %struct.se_session*, %struct.se_session** %8, align 8
  ret %struct.se_session* %77
}

declare dso_local %struct.se_session* @transport_init_session_tags(i32, i32, i32) #1

declare dso_local %struct.se_session* @transport_alloc_session(i32) #1

declare dso_local i64 @IS_ERR(%struct.se_session*) #1

declare dso_local i32 @core_tpg_check_initiator_node_acl(%struct.se_portal_group*, i8*) #1

declare dso_local i32 @transport_free_session(%struct.se_session*) #1

declare dso_local %struct.se_session* @ERR_PTR(i32) #1

declare dso_local i32 @transport_register_session(%struct.se_portal_group*, i32, %struct.se_session*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
