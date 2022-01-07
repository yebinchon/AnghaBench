; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_irq.c_of_irq_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_irq.c_of_irq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.of_phandle_args = type { i32 }
%struct.irq_domain = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_irq_get(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.of_phandle_args, align 4
  %8 = alloca %struct.irq_domain*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device_node*, %struct.device_node** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @of_irq_parse_one(%struct.device_node* %9, i32 %10, %struct.of_phandle_args* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %27

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.irq_domain* @irq_find_host(i32 %18)
  store %struct.irq_domain* %19, %struct.irq_domain** %8, align 8
  %20 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %21 = icmp ne %struct.irq_domain* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @EPROBE_DEFER, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %16
  %26 = call i32 @irq_create_of_mapping(%struct.of_phandle_args* %7)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %22, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @of_irq_parse_one(%struct.device_node*, i32, %struct.of_phandle_args*) #1

declare dso_local %struct.irq_domain* @irq_find_host(i32) #1

declare dso_local i32 @irq_create_of_mapping(%struct.of_phandle_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
