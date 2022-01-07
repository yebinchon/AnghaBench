; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_free_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_free_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_session = type { i32, i64, i32, %struct.se_node_acl* }
%struct.se_node_acl = type { i32, i32, i32, i32, i64, %struct.se_portal_group* }
%struct.se_portal_group = type { i32, %struct.target_core_fabric_ops* }
%struct.target_core_fabric_ops = type { i32 (%struct.se_portal_group.0*)* }
%struct.se_portal_group.0 = type opaque

@se_sess_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_free_session(%struct.se_session* %0) #0 {
  %2 = alloca %struct.se_session*, align 8
  %3 = alloca %struct.se_node_acl*, align 8
  %4 = alloca %struct.se_portal_group*, align 8
  %5 = alloca %struct.target_core_fabric_ops*, align 8
  %6 = alloca i64, align 8
  store %struct.se_session* %0, %struct.se_session** %2, align 8
  %7 = load %struct.se_session*, %struct.se_session** %2, align 8
  %8 = getelementptr inbounds %struct.se_session, %struct.se_session* %7, i32 0, i32 3
  %9 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  store %struct.se_node_acl* %9, %struct.se_node_acl** %3, align 8
  %10 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %11 = icmp ne %struct.se_node_acl* %10, null
  br i1 %11, label %12, label %76

12:                                               ; preds = %1
  %13 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %14 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %13, i32 0, i32 5
  %15 = load %struct.se_portal_group*, %struct.se_portal_group** %14, align 8
  store %struct.se_portal_group* %15, %struct.se_portal_group** %4, align 8
  %16 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %17 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %16, i32 0, i32 1
  %18 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %17, align 8
  store %struct.target_core_fabric_ops* %18, %struct.target_core_fabric_ops** %5, align 8
  %19 = load %struct.se_session*, %struct.se_session** %2, align 8
  %20 = getelementptr inbounds %struct.se_session, %struct.se_session* %19, i32 0, i32 3
  store %struct.se_node_acl* null, %struct.se_node_acl** %20, align 8
  %21 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %22 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %25 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %12
  %29 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %5, align 8
  %30 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %29, i32 0, i32 0
  %31 = load i32 (%struct.se_portal_group.0*)*, i32 (%struct.se_portal_group.0*)** %30, align 8
  %32 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %33 = bitcast %struct.se_portal_group* %32 to %struct.se_portal_group.0*
  %34 = call i32 %31(%struct.se_portal_group.0* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %28
  %37 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %38 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %37, i32 0, i32 2
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %42 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %41, i32 0, i32 3
  %43 = call i64 @list_empty(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %47 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %36
  %49 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %50 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %49, i32 0, i32 2
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %54 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %59 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %58, i32 0, i32 1
  %60 = call i32 @list_del_init(i32* %59)
  br label %61

61:                                               ; preds = %57, %48
  br label %62

62:                                               ; preds = %61, %28, %12
  %63 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %64 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %67 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %72 = call i32 @target_put_nacl(%struct.se_node_acl* %71)
  br label %73

73:                                               ; preds = %70, %62
  %74 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %75 = call i32 @target_put_nacl(%struct.se_node_acl* %74)
  br label %76

76:                                               ; preds = %73, %1
  %77 = load %struct.se_session*, %struct.se_session** %2, align 8
  %78 = getelementptr inbounds %struct.se_session, %struct.se_session* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.se_session*, %struct.se_session** %2, align 8
  %83 = getelementptr inbounds %struct.se_session, %struct.se_session* %82, i32 0, i32 2
  %84 = call i32 @sbitmap_queue_free(i32* %83)
  %85 = load %struct.se_session*, %struct.se_session** %2, align 8
  %86 = getelementptr inbounds %struct.se_session, %struct.se_session* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @kvfree(i64 %87)
  br label %89

89:                                               ; preds = %81, %76
  %90 = load %struct.se_session*, %struct.se_session** %2, align 8
  %91 = getelementptr inbounds %struct.se_session, %struct.se_session* %90, i32 0, i32 0
  %92 = call i32 @percpu_ref_exit(i32* %91)
  %93 = load i32, i32* @se_sess_cache, align 4
  %94 = load %struct.se_session*, %struct.se_session** %2, align 8
  %95 = call i32 @kmem_cache_free(i32 %93, %struct.se_session* %94)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @target_put_nacl(%struct.se_node_acl*) #1

declare dso_local i32 @sbitmap_queue_free(i32*) #1

declare dso_local i32 @kvfree(i64) #1

declare dso_local i32 @percpu_ref_exit(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.se_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
