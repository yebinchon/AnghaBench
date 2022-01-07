; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c___transport_register_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c___transport_register_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { %struct.target_core_fabric_ops*, i32 }
%struct.target_core_fabric_ops = type { i32, i32 (%struct.se_session*, i8*, i32)*, i32 (%struct.se_portal_group.0*)* }
%struct.se_session = type opaque
%struct.se_portal_group.0 = type opaque
%struct.se_node_acl = type { i32, i32, %struct.se_session.1*, i32 }
%struct.se_session.1 = type { i8*, i32, i32, i32, i32, %struct.se_portal_group* }

@PR_REG_ISID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"TARGET_CORE[%s]: Registered fabric_sess_ptr: %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__transport_register_session(%struct.se_portal_group* %0, %struct.se_node_acl* %1, %struct.se_session.1* %2, i8* %3) #0 {
  %5 = alloca %struct.se_portal_group*, align 8
  %6 = alloca %struct.se_node_acl*, align 8
  %7 = alloca %struct.se_session.1*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.target_core_fabric_ops*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %5, align 8
  store %struct.se_node_acl* %1, %struct.se_node_acl** %6, align 8
  store %struct.se_session.1* %2, %struct.se_session.1** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %14 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %13, i32 0, i32 0
  %15 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %14, align 8
  store %struct.target_core_fabric_ops* %15, %struct.target_core_fabric_ops** %9, align 8
  %16 = load i32, i32* @PR_REG_ISID_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %21 = load %struct.se_session.1*, %struct.se_session.1** %7, align 8
  %22 = getelementptr inbounds %struct.se_session.1, %struct.se_session.1* %21, i32 0, i32 5
  store %struct.se_portal_group* %20, %struct.se_portal_group** %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.se_session.1*, %struct.se_session.1** %7, align 8
  %25 = getelementptr inbounds %struct.se_session.1, %struct.se_session.1* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %27 = icmp ne %struct.se_node_acl* %26, null
  br i1 %27, label %28, label %98

28:                                               ; preds = %4
  %29 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %30 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %35 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.se_session.1*, %struct.se_session.1** %7, align 8
  %38 = getelementptr inbounds %struct.se_session.1, %struct.se_session.1* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  br label %56

39:                                               ; preds = %28
  %40 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %9, align 8
  %41 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %40, i32 0, i32 2
  %42 = load i32 (%struct.se_portal_group.0*)*, i32 (%struct.se_portal_group.0*)** %41, align 8
  %43 = icmp ne i32 (%struct.se_portal_group.0*)* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %9, align 8
  %46 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %45, i32 0, i32 2
  %47 = load i32 (%struct.se_portal_group.0*)*, i32 (%struct.se_portal_group.0*)** %46, align 8
  %48 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %49 = bitcast %struct.se_portal_group* %48 to %struct.se_portal_group.0*
  %50 = call i32 %47(%struct.se_portal_group.0* %49)
  %51 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %52 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load %struct.se_session.1*, %struct.se_session.1** %7, align 8
  %54 = getelementptr inbounds %struct.se_session.1, %struct.se_session.1* %53, i32 0, i32 4
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %44, %39
  br label %56

56:                                               ; preds = %55, %33
  %57 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %58 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %57, i32 0, i32 0
  %59 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %58, align 8
  %60 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %59, i32 0, i32 1
  %61 = load i32 (%struct.se_session*, i8*, i32)*, i32 (%struct.se_session*, i8*, i32)** %60, align 8
  %62 = icmp ne i32 (%struct.se_session*, i8*, i32)* %61, null
  br i1 %62, label %63, label %81

63:                                               ; preds = %56
  %64 = getelementptr inbounds i8, i8* %19, i64 0
  %65 = load i32, i32* @PR_REG_ISID_LEN, align 4
  %66 = call i32 @memset(i8* %64, i32 0, i32 %65)
  %67 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %68 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %67, i32 0, i32 0
  %69 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %68, align 8
  %70 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %69, i32 0, i32 1
  %71 = load i32 (%struct.se_session*, i8*, i32)*, i32 (%struct.se_session*, i8*, i32)** %70, align 8
  %72 = load %struct.se_session.1*, %struct.se_session.1** %7, align 8
  %73 = bitcast %struct.se_session.1* %72 to %struct.se_session*
  %74 = getelementptr inbounds i8, i8* %19, i64 0
  %75 = load i32, i32* @PR_REG_ISID_LEN, align 4
  %76 = call i32 %71(%struct.se_session* %73, i8* %74, i32 %75)
  %77 = getelementptr inbounds i8, i8* %19, i64 0
  %78 = call i32 @get_unaligned_be64(i8* %77)
  %79 = load %struct.se_session.1*, %struct.se_session.1** %7, align 8
  %80 = getelementptr inbounds %struct.se_session.1, %struct.se_session.1* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %63, %56
  %82 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %83 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %82, i32 0, i32 0
  %84 = load i64, i64* %12, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  %86 = load %struct.se_session.1*, %struct.se_session.1** %7, align 8
  %87 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %88 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %87, i32 0, i32 2
  store %struct.se_session.1* %86, %struct.se_session.1** %88, align 8
  %89 = load %struct.se_session.1*, %struct.se_session.1** %7, align 8
  %90 = getelementptr inbounds %struct.se_session.1, %struct.se_session.1* %89, i32 0, i32 2
  %91 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %92 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %91, i32 0, i32 1
  %93 = call i32 @list_add_tail(i32* %90, i32* %92)
  %94 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %95 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %94, i32 0, i32 0
  %96 = load i64, i64* %12, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  br label %98

98:                                               ; preds = %81, %4
  %99 = load %struct.se_session.1*, %struct.se_session.1** %7, align 8
  %100 = getelementptr inbounds %struct.se_session.1, %struct.se_session.1* %99, i32 0, i32 1
  %101 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %102 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %101, i32 0, i32 1
  %103 = call i32 @list_add_tail(i32* %100, i32* %102)
  %104 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %105 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %104, i32 0, i32 0
  %106 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %105, align 8
  %107 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.se_session.1*, %struct.se_session.1** %7, align 8
  %110 = getelementptr inbounds %struct.se_session.1, %struct.se_session.1* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %108, i8* %111)
  %113 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %113)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @get_unaligned_be64(i8*) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @pr_debug(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
