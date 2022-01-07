; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_q_resource_requirements.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_q_resource_requirements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_response = type { i32 }
%struct.q_res_req_compl = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pci_q_res_req_response = type { i32* }

@.str = private unnamed_addr constant [40 x i8] c"query resource requirements failed: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.pci_response*, i32)* @q_resource_requirements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @q_resource_requirements(i8* %0, %struct.pci_response* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pci_response*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.q_res_req_compl*, align 8
  %8 = alloca %struct.pci_q_res_req_response*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.pci_response* %1, %struct.pci_response** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.q_res_req_compl*
  store %struct.q_res_req_compl* %11, %struct.q_res_req_compl** %7, align 8
  %12 = load %struct.pci_response*, %struct.pci_response** %5, align 8
  %13 = bitcast %struct.pci_response* %12 to %struct.pci_q_res_req_response*
  store %struct.pci_q_res_req_response* %13, %struct.pci_q_res_req_response** %8, align 8
  %14 = load %struct.pci_response*, %struct.pci_response** %5, align 8
  %15 = getelementptr inbounds %struct.pci_response, %struct.pci_response* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load %struct.q_res_req_compl*, %struct.q_res_req_compl** %7, align 8
  %20 = getelementptr inbounds %struct.q_res_req_compl, %struct.q_res_req_compl* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.pci_response*, %struct.pci_response** %5, align 8
  %28 = getelementptr inbounds %struct.pci_response, %struct.pci_response* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %55

31:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 6
  br i1 %34, label %35, label %54

35:                                               ; preds = %32
  %36 = load %struct.pci_q_res_req_response*, %struct.pci_q_res_req_response** %8, align 8
  %37 = getelementptr inbounds %struct.pci_q_res_req_response, %struct.pci_q_res_req_response* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.q_res_req_compl*, %struct.q_res_req_compl** %7, align 8
  %44 = getelementptr inbounds %struct.q_res_req_compl, %struct.q_res_req_compl* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %42, i32* %50, align 4
  br label %51

51:                                               ; preds = %35
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %32

54:                                               ; preds = %32
  br label %55

55:                                               ; preds = %54, %18
  %56 = load %struct.q_res_req_compl*, %struct.q_res_req_compl** %7, align 8
  %57 = getelementptr inbounds %struct.q_res_req_compl, %struct.q_res_req_compl* %56, i32 0, i32 0
  %58 = call i32 @complete(i32* %57)
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
