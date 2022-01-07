; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_setup_qp_peer_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_setup_qp_peer_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_ctx = type { i32, i32, i32, %struct.ntb_transport_qp* }
%struct.ntb_transport_qp = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i8* }

@PIDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"QP%d Peer MSI addr=%x data=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Using MSI interrupts for QP%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_transport_ctx*, i32)* @ntb_transport_setup_qp_peer_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_transport_setup_qp_peer_msi(%struct.ntb_transport_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.ntb_transport_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_transport_qp*, align 8
  %6 = alloca i32, align 4
  store %struct.ntb_transport_ctx* %0, %struct.ntb_transport_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %7, i32 0, i32 3
  %9 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %9, i64 %11
  store %struct.ntb_transport_qp* %12, %struct.ntb_transport_qp** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = mul i32 %13, 2
  %15 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add i32 %14, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %84

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ntb_spad_count(i32 %28)
  %30 = icmp sge i32 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %84

32:                                               ; preds = %24
  %33 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %34 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* @PIDX, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i8* @ntb_peer_spad_read(%struct.TYPE_6__* %35, i32 %36, i32 %37)
  %39 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %40 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %43 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* @PIDX, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i8* @ntb_peer_spad_read(%struct.TYPE_6__* %44, i32 %45, i32 %47)
  %49 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %50 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i8* %48, i8** %51, align 8
  %52 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %53 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %60 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %64 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @dev_dbg(i32* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %58, i8* %62, i8* %66)
  %68 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %69 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %32
  %74 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %75 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %77 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @dev_info(i32* %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %23, %31, %73, %32
  ret void
}

declare dso_local i32 @ntb_spad_count(i32) #1

declare dso_local i8* @ntb_peer_spad_read(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
