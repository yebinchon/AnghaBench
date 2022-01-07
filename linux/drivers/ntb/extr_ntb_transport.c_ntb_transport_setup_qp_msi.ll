; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_setup_qp_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_setup_qp_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_ctx = type { i32, %struct.TYPE_9__*, i32, %struct.ntb_transport_qp* }
%struct.TYPE_9__ = type { i32 }
%struct.ntb_transport_qp = type { i64, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Not enough SPADS to use MSI interrupts\0A\00", align 1
@ntb_transport_isr = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Unable to allocate MSI interrupt for qp%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"QP%d MSI %d addr=%x data=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_transport_ctx*, i32)* @ntb_transport_setup_qp_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_transport_setup_qp_msi(%struct.ntb_transport_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.ntb_transport_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_transport_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ntb_transport_ctx* %0, %struct.ntb_transport_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %8, i32 0, i32 3
  %10 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %10, i64 %12
  store %struct.ntb_transport_qp* %13, %struct.ntb_transport_qp** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = mul i32 %14, 2
  %16 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add i32 %15, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %139

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = call i32 @ntb_spad_count(%struct.TYPE_9__* %29)
  %31 = icmp sge i32 %26, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %34 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %33, i32 0, i32 2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @dev_warn_once(i32* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %139

40:                                               ; preds = %25
  %41 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %42 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ntb_spad_write(%struct.TYPE_7__* %43, i32 %44, i32 0)
  %46 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %47 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %46, i32 0, i32 2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @ntb_spad_write(%struct.TYPE_7__* %48, i32 %50, i32 0)
  %52 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %53 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %82, label %56

56:                                               ; preds = %40
  %57 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %58 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %57, i32 0, i32 2
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i32, i32* @ntb_transport_isr, align 4
  %61 = load i32, i32* @KBUILD_MODNAME, align 4
  %62 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %63 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %64 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %63, i32 0, i32 1
  %65 = call i64 @ntbm_msi_request_irq(%struct.TYPE_7__* %59, i32 %60, i32 %61, %struct.ntb_transport_qp* %62, %struct.TYPE_8__* %64)
  %66 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %67 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %69 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %56
  %73 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %74 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @dev_warn(i32* %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %139

81:                                               ; preds = %56
  br label %82

82:                                               ; preds = %81, %40
  %83 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %84 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %83, i32 0, i32 2
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %88 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ntb_spad_write(%struct.TYPE_7__* %85, i32 %86, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %129

95:                                               ; preds = %82
  %96 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %97 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %96, i32 0, i32 2
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  %101 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %102 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @ntb_spad_write(%struct.TYPE_7__* %98, i32 %100, i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  br label %129

109:                                              ; preds = %95
  %110 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %111 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %110, i32 0, i32 2
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %118 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %121 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %125 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @dev_dbg(i32* %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %116, i64 %119, i32 %123, i32 %127)
  br label %139

129:                                              ; preds = %108, %94
  %130 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %131 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %130, i32 0, i32 1
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %135 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %138 = call i32 @devm_free_irq(i32* %133, i64 %136, %struct.ntb_transport_qp* %137)
  br label %139

139:                                              ; preds = %129, %109, %72, %32, %24
  ret void
}

declare dso_local i32 @ntb_spad_count(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_warn_once(i32*, i8*) #1

declare dso_local i32 @ntb_spad_write(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @ntbm_msi_request_irq(%struct.TYPE_7__*, i32, i32, %struct.ntb_transport_qp*, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @devm_free_irq(i32*, i64, %struct.ntb_transport_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
