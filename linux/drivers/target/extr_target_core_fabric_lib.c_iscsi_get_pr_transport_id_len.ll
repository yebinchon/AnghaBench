; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_fabric_lib.c_iscsi_get_pr_transport_id_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_fabric_lib.c_iscsi_get_pr_transport_id_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { i32, i32 }
%struct.t10_pr_registration = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_node_acl*, %struct.t10_pr_registration*, i32*)* @iscsi_get_pr_transport_id_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_get_pr_transport_id_len(%struct.se_node_acl* %0, %struct.t10_pr_registration* %1, i32* %2) #0 {
  %4 = alloca %struct.se_node_acl*, align 8
  %5 = alloca %struct.t10_pr_registration*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.se_node_acl* %0, %struct.se_node_acl** %4, align 8
  store %struct.t10_pr_registration* %1, %struct.t10_pr_registration** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %10 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %13 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strlen(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %7, align 4
  %18 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %5, align 8
  %19 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 5
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 7
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 1, i32* %27, align 4
  br label %30

28:                                               ; preds = %3
  %29 = load i32*, i32** %6, align 8
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %28, %22
  %31 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %32 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock_irq(i32* %32)
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 0, %34
  %36 = and i32 %35, 3
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %30
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 4
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
