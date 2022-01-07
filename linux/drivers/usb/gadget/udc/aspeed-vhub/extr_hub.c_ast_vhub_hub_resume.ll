; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_hub_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_hub_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub = type { i32, %struct.ast_vhub_port* }
%struct.ast_vhub_port = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"USB bus resume\0A\00", align 1
@AST_VHUB_NUM_PORTS = common dso_local global i32 0, align 4
@USB_PORT_STAT_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_vhub_hub_resume(%struct.ast_vhub* %0) #0 {
  %2 = alloca %struct.ast_vhub*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ast_vhub_port*, align 8
  store %struct.ast_vhub* %0, %struct.ast_vhub** %2, align 8
  %5 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %6 = call i32 @UDCDBG(%struct.ast_vhub* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %8 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %14 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %37, %12
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @AST_VHUB_NUM_PORTS, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %21 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %20, i32 0, i32 1
  %22 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %22, i64 %24
  store %struct.ast_vhub_port* %25, %struct.ast_vhub_port** %4, align 8
  %26 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %4, align 8
  %27 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %19
  %33 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %4, align 8
  %34 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %33, i32 0, i32 1
  %35 = call i32 @ast_vhub_dev_resume(i32* %34)
  br label %36

36:                                               ; preds = %32, %19
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %15

40:                                               ; preds = %11, %15
  ret void
}

declare dso_local i32 @UDCDBG(%struct.ast_vhub*, i8*) #1

declare dso_local i32 @ast_vhub_dev_resume(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
