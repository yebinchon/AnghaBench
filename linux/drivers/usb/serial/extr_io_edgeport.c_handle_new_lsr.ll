; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_edgeport.c_handle_new_lsr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_edgeport.c_handle_new_lsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edgeport_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.async_icount }
%struct.async_icount = type { i32, i32, i32, i32 }

@LSR_OVER_ERR = common dso_local global i32 0, align 4
@LSR_PAR_ERR = common dso_local global i32 0, align 4
@LSR_FRM_ERR = common dso_local global i32 0, align 4
@LSR_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edgeport_port*, i32, i32, i32)* @handle_new_lsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_new_lsr(%struct.edgeport_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.edgeport_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.async_icount*, align 8
  store %struct.edgeport_port* %0, %struct.edgeport_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @LSR_OVER_ERR, align 4
  %13 = load i32, i32* @LSR_PAR_ERR, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @LSR_FRM_ERR, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @LSR_BREAK, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %11, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.edgeport_port*, %struct.edgeport_port** %5, align 8
  %22 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @LSR_BREAK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load i32, i32* @LSR_OVER_ERR, align 4
  %29 = load i32, i32* @LSR_BREAK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %27, %4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.edgeport_port*, %struct.edgeport_port** %5, align 8
  %38 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 @edge_tty_recv(%struct.TYPE_2__* %39, i32* %8, i32 1)
  br label %41

41:                                               ; preds = %36, %33
  %42 = load %struct.edgeport_port*, %struct.edgeport_port** %5, align 8
  %43 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store %struct.async_icount* %45, %struct.async_icount** %10, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @LSR_BREAK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.async_icount*, %struct.async_icount** %10, align 8
  %52 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %41
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @LSR_OVER_ERR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.async_icount*, %struct.async_icount** %10, align 8
  %62 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @LSR_PAR_ERR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.async_icount*, %struct.async_icount** %10, align 8
  %72 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @LSR_FRM_ERR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.async_icount*, %struct.async_icount** %10, align 8
  %82 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %80, %75
  ret void
}

declare dso_local i32 @edge_tty_recv(%struct.TYPE_2__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
