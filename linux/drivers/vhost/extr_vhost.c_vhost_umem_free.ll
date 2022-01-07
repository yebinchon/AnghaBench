; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_umem_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_umem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_umem = type { i32, i32 }
%struct.vhost_umem_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_umem*, %struct.vhost_umem_node*)* @vhost_umem_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_umem_free(%struct.vhost_umem* %0, %struct.vhost_umem_node* %1) #0 {
  %3 = alloca %struct.vhost_umem*, align 8
  %4 = alloca %struct.vhost_umem_node*, align 8
  store %struct.vhost_umem* %0, %struct.vhost_umem** %3, align 8
  store %struct.vhost_umem_node* %1, %struct.vhost_umem_node** %4, align 8
  %5 = load %struct.vhost_umem_node*, %struct.vhost_umem_node** %4, align 8
  %6 = load %struct.vhost_umem*, %struct.vhost_umem** %3, align 8
  %7 = getelementptr inbounds %struct.vhost_umem, %struct.vhost_umem* %6, i32 0, i32 1
  %8 = call i32 @vhost_umem_interval_tree_remove(%struct.vhost_umem_node* %5, i32* %7)
  %9 = load %struct.vhost_umem_node*, %struct.vhost_umem_node** %4, align 8
  %10 = getelementptr inbounds %struct.vhost_umem_node, %struct.vhost_umem_node* %9, i32 0, i32 0
  %11 = call i32 @list_del(i32* %10)
  %12 = load %struct.vhost_umem_node*, %struct.vhost_umem_node** %4, align 8
  %13 = call i32 @kfree(%struct.vhost_umem_node* %12)
  %14 = load %struct.vhost_umem*, %struct.vhost_umem** %3, align 8
  %15 = getelementptr inbounds %struct.vhost_umem, %struct.vhost_umem* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 4
  ret void
}

declare dso_local i32 @vhost_umem_interval_tree_remove(%struct.vhost_umem_node*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.vhost_umem_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
