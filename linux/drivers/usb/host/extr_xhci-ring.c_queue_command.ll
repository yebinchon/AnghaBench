; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_queue_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_queue_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32, %struct.TYPE_3__*, i32, %struct.xhci_command* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.xhci_command = type { i32, i32 }

@XHCI_STATE_DYING = common dso_local global i32 0, align 4
@XHCI_STATE_HALTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"xHCI dying or halted, can't queue_command\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@EP_STATE_RUNNING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"ERR: No room for command on command ring\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"ERR: Reserved TRB counting for unfailable commands failed.\0A\00", align 1
@XHCI_CMD_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_command*, i32, i32, i32, i32, i32)* @queue_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_command(%struct.xhci_hcd* %0, %struct.xhci_command* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xhci_hcd*, align 8
  %10 = alloca %struct.xhci_command*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %9, align 8
  store %struct.xhci_command* %1, %struct.xhci_command** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %19 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %16, align 4
  %21 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %22 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @XHCI_STATE_DYING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %7
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %29 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @XHCI_STATE_HALTED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27, %7
  %35 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %36 = call i32 @xhci_dbg(%struct.xhci_hcd* %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ESHUTDOWN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %106

39:                                               ; preds = %27
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %47 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %48 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* @EP_STATE_RUNNING, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call i32 @prepare_ring(%struct.xhci_hcd* %46, %struct.TYPE_3__* %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %45
  %57 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %58 = call i32 @xhci_err(%struct.xhci_hcd* %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %63 = call i32 @xhci_err(%struct.xhci_hcd* %62, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %8, align 4
  br label %106

66:                                               ; preds = %45
  %67 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %68 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.xhci_command*, %struct.xhci_command** %10, align 8
  %73 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %75 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %74, i32 0, i32 3
  %76 = call i64 @list_empty(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %66
  %79 = load %struct.xhci_command*, %struct.xhci_command** %10, align 8
  %80 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %81 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %80, i32 0, i32 4
  store %struct.xhci_command* %79, %struct.xhci_command** %81, align 8
  %82 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %83 = load i32, i32* @XHCI_CMD_DEFAULT_TIMEOUT, align 4
  %84 = call i32 @xhci_mod_cmd_timer(%struct.xhci_hcd* %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %66
  %86 = load %struct.xhci_command*, %struct.xhci_command** %10, align 8
  %87 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %86, i32 0, i32 0
  %88 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %89 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %88, i32 0, i32 3
  %90 = call i32 @list_add_tail(i32* %87, i32* %89)
  %91 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %92 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %93 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %92, i32 0, i32 2
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %100 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %99, i32 0, i32 2
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %98, %103
  %105 = call i32 @queue_trb(%struct.xhci_hcd* %91, %struct.TYPE_3__* %94, i32 0, i32 %95, i32 %96, i32 %97, i32 %104)
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %85, %64, %34
  %107 = load i32, i32* %8, align 4
  ret i32 %107
}

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @prepare_ring(%struct.xhci_hcd*, %struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @xhci_err(%struct.xhci_hcd*, i8*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @xhci_mod_cmd_timer(%struct.xhci_hcd*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @queue_trb(%struct.xhci_hcd*, %struct.TYPE_3__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
