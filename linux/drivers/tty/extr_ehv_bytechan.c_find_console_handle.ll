; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_ehv_bytechan.c_find_console_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_ehv_bytechan.c_find_console_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@of_stdout = common dso_local global %struct.device_node* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"epapr,hv-byte-channel\00", align 1
@stdout_irq = common dso_local global i64 0, align 8
@NO_IRQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"ehv-bc: no 'interrupts' property in %pOF node\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"hv-handle\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"ehv-bc: no 'hv-handle' property in %pOFn node\0A\00", align 1
@stdout_bc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @find_console_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_console_handle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32*, align 8
  %4 = load %struct.device_node*, %struct.device_node** @of_stdout, align 8
  store %struct.device_node* %4, %struct.device_node** %2, align 8
  %5 = load %struct.device_node*, %struct.device_node** %2, align 8
  %6 = icmp ne %struct.device_node* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load %struct.device_node*, %struct.device_node** %2, align 8
  %9 = call i32 @of_device_is_compatible(%struct.device_node* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %0
  store i32 0, i32* %1, align 4
  br label %33

12:                                               ; preds = %7
  %13 = load %struct.device_node*, %struct.device_node** %2, align 8
  %14 = call i64 @irq_of_parse_and_map(%struct.device_node* %13, i32 0)
  store i64 %14, i64* @stdout_irq, align 8
  %15 = load i64, i64* @stdout_irq, align 8
  %16 = load i64, i64* @NO_IRQ, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.device_node*, %struct.device_node** %2, align 8
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %19)
  store i32 0, i32* %1, align 4
  br label %33

21:                                               ; preds = %12
  %22 = load %struct.device_node*, %struct.device_node** %2, align 8
  %23 = call i32* @of_get_property(%struct.device_node* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %23, i32** %3, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load %struct.device_node*, %struct.device_node** %2, align 8
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %27)
  store i32 0, i32* %1, align 4
  br label %33

29:                                               ; preds = %21
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be32_to_cpu(i32 %31)
  store i32 %32, i32* @stdout_bc, align 4
  store i32 1, i32* %1, align 4
  br label %33

33:                                               ; preds = %29, %26, %18, %11
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i64 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
