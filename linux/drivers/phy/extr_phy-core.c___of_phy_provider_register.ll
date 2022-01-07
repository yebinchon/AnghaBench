; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c___of_phy_provider_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c___of_phy_provider_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_provider = type { %struct.phy* (%struct.device*, %struct.of_phandle_args*)*, i32, %struct.module*, i8*, %struct.device.0* }
%struct.phy = type opaque
%struct.device = type opaque
%struct.of_phandle_args = type opaque
%struct.device.0 = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.module = type { i32 }
%struct.of_phandle_args.1 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@phy_provider_mutex = common dso_local global i32 0, align 4
@phy_provider_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy_provider* @__of_phy_provider_register(%struct.device.0* %0, %struct.device_node* %1, %struct.module* %2, %struct.phy* (%struct.device.0*, %struct.of_phandle_args.1*)* %3) #0 {
  %5 = alloca %struct.phy_provider*, align 8
  %6 = alloca %struct.device.0*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.module*, align 8
  %9 = alloca %struct.phy* (%struct.device.0*, %struct.of_phandle_args.1*)*, align 8
  %10 = alloca %struct.phy_provider*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca %struct.device_node*, align 8
  store %struct.device.0* %0, %struct.device.0** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.module* %2, %struct.module** %8, align 8
  store %struct.phy* (%struct.device.0*, %struct.of_phandle_args.1*)* %3, %struct.phy* (%struct.device.0*, %struct.of_phandle_args.1*)** %9, align 8
  %13 = load %struct.device_node*, %struct.device_node** %7, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %15, label %45

15:                                               ; preds = %4
  %16 = load %struct.device_node*, %struct.device_node** %7, align 8
  %17 = call i8* @of_node_get(%struct.device_node* %16)
  %18 = bitcast i8* %17 to %struct.device_node*
  store %struct.device_node* %18, %struct.device_node** %11, align 8
  br label %19

19:                                               ; preds = %29, %15
  %20 = load %struct.device_node*, %struct.device_node** %11, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load %struct.device_node*, %struct.device_node** %11, align 8
  %24 = load %struct.device.0*, %struct.device.0** %6, align 8
  %25 = getelementptr inbounds %struct.device.0, %struct.device.0* %24, i32 0, i32 0
  %26 = load %struct.device_node*, %struct.device_node** %25, align 8
  %27 = icmp eq %struct.device_node* %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %35

29:                                               ; preds = %22
  %30 = load %struct.device_node*, %struct.device_node** %11, align 8
  %31 = call %struct.device_node* @of_get_parent(%struct.device_node* %30)
  store %struct.device_node* %31, %struct.device_node** %12, align 8
  %32 = load %struct.device_node*, %struct.device_node** %11, align 8
  %33 = call i32 @of_node_put(%struct.device_node* %32)
  %34 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %34, %struct.device_node** %11, align 8
  br label %19

35:                                               ; preds = %28, %19
  %36 = load %struct.device_node*, %struct.device_node** %11, align 8
  %37 = icmp ne %struct.device_node* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.phy_provider* @ERR_PTR(i32 %40)
  store %struct.phy_provider* %41, %struct.phy_provider** %5, align 8
  br label %79

42:                                               ; preds = %35
  %43 = load %struct.device_node*, %struct.device_node** %11, align 8
  %44 = call i32 @of_node_put(%struct.device_node* %43)
  br label %49

45:                                               ; preds = %4
  %46 = load %struct.device.0*, %struct.device.0** %6, align 8
  %47 = getelementptr inbounds %struct.device.0, %struct.device.0* %46, i32 0, i32 0
  %48 = load %struct.device_node*, %struct.device_node** %47, align 8
  store %struct.device_node* %48, %struct.device_node** %7, align 8
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.phy_provider* @kzalloc(i32 40, i32 %50)
  store %struct.phy_provider* %51, %struct.phy_provider** %10, align 8
  %52 = load %struct.phy_provider*, %struct.phy_provider** %10, align 8
  %53 = icmp ne %struct.phy_provider* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.phy_provider* @ERR_PTR(i32 %56)
  store %struct.phy_provider* %57, %struct.phy_provider** %5, align 8
  br label %79

58:                                               ; preds = %49
  %59 = load %struct.device.0*, %struct.device.0** %6, align 8
  %60 = load %struct.phy_provider*, %struct.phy_provider** %10, align 8
  %61 = getelementptr inbounds %struct.phy_provider, %struct.phy_provider* %60, i32 0, i32 4
  store %struct.device.0* %59, %struct.device.0** %61, align 8
  %62 = load %struct.device_node*, %struct.device_node** %7, align 8
  %63 = call i8* @of_node_get(%struct.device_node* %62)
  %64 = load %struct.phy_provider*, %struct.phy_provider** %10, align 8
  %65 = getelementptr inbounds %struct.phy_provider, %struct.phy_provider* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.module*, %struct.module** %8, align 8
  %67 = load %struct.phy_provider*, %struct.phy_provider** %10, align 8
  %68 = getelementptr inbounds %struct.phy_provider, %struct.phy_provider* %67, i32 0, i32 2
  store %struct.module* %66, %struct.module** %68, align 8
  %69 = load %struct.phy* (%struct.device.0*, %struct.of_phandle_args.1*)*, %struct.phy* (%struct.device.0*, %struct.of_phandle_args.1*)** %9, align 8
  %70 = bitcast %struct.phy* (%struct.device.0*, %struct.of_phandle_args.1*)* %69 to %struct.phy* (%struct.device*, %struct.of_phandle_args*)*
  %71 = load %struct.phy_provider*, %struct.phy_provider** %10, align 8
  %72 = getelementptr inbounds %struct.phy_provider, %struct.phy_provider* %71, i32 0, i32 0
  store %struct.phy* (%struct.device*, %struct.of_phandle_args*)* %70, %struct.phy* (%struct.device*, %struct.of_phandle_args*)** %72, align 8
  %73 = call i32 @mutex_lock(i32* @phy_provider_mutex)
  %74 = load %struct.phy_provider*, %struct.phy_provider** %10, align 8
  %75 = getelementptr inbounds %struct.phy_provider, %struct.phy_provider* %74, i32 0, i32 1
  %76 = call i32 @list_add_tail(i32* %75, i32* @phy_provider_list)
  %77 = call i32 @mutex_unlock(i32* @phy_provider_mutex)
  %78 = load %struct.phy_provider*, %struct.phy_provider** %10, align 8
  store %struct.phy_provider* %78, %struct.phy_provider** %5, align 8
  br label %79

79:                                               ; preds = %58, %54, %38
  %80 = load %struct.phy_provider*, %struct.phy_provider** %5, align 8
  ret %struct.phy_provider* %80
}

declare dso_local i8* @of_node_get(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.phy_provider* @ERR_PTR(i32) #1

declare dso_local %struct.phy_provider* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
