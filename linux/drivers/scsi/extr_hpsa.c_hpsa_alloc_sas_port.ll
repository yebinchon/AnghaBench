; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_alloc_sas_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_alloc_sas_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsa_sas_port = type { i32, i32, %struct.sas_port*, %struct.hpsa_sas_node*, i32 }
%struct.sas_port = type { i32 }
%struct.hpsa_sas_node = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hpsa_sas_port* (%struct.hpsa_sas_node*, i32)* @hpsa_alloc_sas_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hpsa_sas_port* @hpsa_alloc_sas_port(%struct.hpsa_sas_node* %0, i32 %1) #0 {
  %3 = alloca %struct.hpsa_sas_port*, align 8
  %4 = alloca %struct.hpsa_sas_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hpsa_sas_port*, align 8
  %8 = alloca %struct.sas_port*, align 8
  store %struct.hpsa_sas_node* %0, %struct.hpsa_sas_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.hpsa_sas_port* @kzalloc(i32 32, i32 %9)
  store %struct.hpsa_sas_port* %10, %struct.hpsa_sas_port** %7, align 8
  %11 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %7, align 8
  %12 = icmp ne %struct.hpsa_sas_port* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.hpsa_sas_port* null, %struct.hpsa_sas_port** %3, align 8
  br label %53

14:                                               ; preds = %2
  %15 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %7, align 8
  %16 = getelementptr inbounds %struct.hpsa_sas_port, %struct.hpsa_sas_port* %15, i32 0, i32 4
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.hpsa_sas_node*, %struct.hpsa_sas_node** %4, align 8
  %19 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %7, align 8
  %20 = getelementptr inbounds %struct.hpsa_sas_port, %struct.hpsa_sas_port* %19, i32 0, i32 3
  store %struct.hpsa_sas_node* %18, %struct.hpsa_sas_node** %20, align 8
  %21 = load %struct.hpsa_sas_node*, %struct.hpsa_sas_node** %4, align 8
  %22 = getelementptr inbounds %struct.hpsa_sas_node, %struct.hpsa_sas_node* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.sas_port* @sas_port_alloc_num(i32 %23)
  store %struct.sas_port* %24, %struct.sas_port** %8, align 8
  %25 = load %struct.sas_port*, %struct.sas_port** %8, align 8
  %26 = icmp ne %struct.sas_port* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %14
  br label %50

28:                                               ; preds = %14
  %29 = load %struct.sas_port*, %struct.sas_port** %8, align 8
  %30 = call i32 @sas_port_add(%struct.sas_port* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %47

34:                                               ; preds = %28
  %35 = load %struct.sas_port*, %struct.sas_port** %8, align 8
  %36 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %7, align 8
  %37 = getelementptr inbounds %struct.hpsa_sas_port, %struct.hpsa_sas_port* %36, i32 0, i32 2
  store %struct.sas_port* %35, %struct.sas_port** %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %7, align 8
  %40 = getelementptr inbounds %struct.hpsa_sas_port, %struct.hpsa_sas_port* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %7, align 8
  %42 = getelementptr inbounds %struct.hpsa_sas_port, %struct.hpsa_sas_port* %41, i32 0, i32 0
  %43 = load %struct.hpsa_sas_node*, %struct.hpsa_sas_node** %4, align 8
  %44 = getelementptr inbounds %struct.hpsa_sas_node, %struct.hpsa_sas_node* %43, i32 0, i32 0
  %45 = call i32 @list_add_tail(i32* %42, i32* %44)
  %46 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %7, align 8
  store %struct.hpsa_sas_port* %46, %struct.hpsa_sas_port** %3, align 8
  br label %53

47:                                               ; preds = %33
  %48 = load %struct.sas_port*, %struct.sas_port** %8, align 8
  %49 = call i32 @sas_port_free(%struct.sas_port* %48)
  br label %50

50:                                               ; preds = %47, %27
  %51 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %7, align 8
  %52 = call i32 @kfree(%struct.hpsa_sas_port* %51)
  store %struct.hpsa_sas_port* null, %struct.hpsa_sas_port** %3, align 8
  br label %53

53:                                               ; preds = %50, %34, %13
  %54 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %3, align 8
  ret %struct.hpsa_sas_port* %54
}

declare dso_local %struct.hpsa_sas_port* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.sas_port* @sas_port_alloc_num(i32) #1

declare dso_local i32 @sas_port_add(%struct.sas_port*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @sas_port_free(%struct.sas_port*) #1

declare dso_local i32 @kfree(%struct.hpsa_sas_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
