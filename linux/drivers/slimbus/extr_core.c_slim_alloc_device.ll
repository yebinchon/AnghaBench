; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_core.c_slim_alloc_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_core.c_slim_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_device = type { i32, %struct.slim_eaddr }
%struct.slim_eaddr = type { i32 }
%struct.slim_controller = type { i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slim_device* (%struct.slim_controller*, %struct.slim_eaddr*, %struct.device_node*)* @slim_alloc_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slim_device* @slim_alloc_device(%struct.slim_controller* %0, %struct.slim_eaddr* %1, %struct.device_node* %2) #0 {
  %4 = alloca %struct.slim_device*, align 8
  %5 = alloca %struct.slim_controller*, align 8
  %6 = alloca %struct.slim_eaddr*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.slim_device*, align 8
  %9 = alloca i32, align 4
  store %struct.slim_controller* %0, %struct.slim_controller** %5, align 8
  store %struct.slim_eaddr* %1, %struct.slim_eaddr** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.slim_device* @kzalloc(i32 8, i32 %10)
  store %struct.slim_device* %11, %struct.slim_device** %8, align 8
  %12 = load %struct.slim_device*, %struct.slim_device** %8, align 8
  %13 = icmp ne %struct.slim_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.slim_device* null, %struct.slim_device** %4, align 8
  br label %33

15:                                               ; preds = %3
  %16 = load %struct.slim_device*, %struct.slim_device** %8, align 8
  %17 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %16, i32 0, i32 1
  %18 = load %struct.slim_eaddr*, %struct.slim_eaddr** %6, align 8
  %19 = bitcast %struct.slim_eaddr* %17 to i8*
  %20 = bitcast %struct.slim_eaddr* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %22 = load %struct.slim_device*, %struct.slim_device** %8, align 8
  %23 = load %struct.device_node*, %struct.device_node** %7, align 8
  %24 = call i32 @slim_add_device(%struct.slim_controller* %21, %struct.slim_device* %22, %struct.device_node* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %15
  %28 = load %struct.slim_device*, %struct.slim_device** %8, align 8
  %29 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %28, i32 0, i32 0
  %30 = call i32 @put_device(i32* %29)
  store %struct.slim_device* null, %struct.slim_device** %4, align 8
  br label %33

31:                                               ; preds = %15
  %32 = load %struct.slim_device*, %struct.slim_device** %8, align 8
  store %struct.slim_device* %32, %struct.slim_device** %4, align 8
  br label %33

33:                                               ; preds = %31, %27, %14
  %34 = load %struct.slim_device*, %struct.slim_device** %4, align 8
  ret %struct.slim_device* %34
}

declare dso_local %struct.slim_device* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @slim_add_device(%struct.slim_controller*, %struct.slim_device*, %struct.device_node*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
