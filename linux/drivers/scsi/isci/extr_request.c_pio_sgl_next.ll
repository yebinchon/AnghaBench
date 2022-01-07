; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_pio_sgl_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_pio_sgl_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scu_sgl_element = type { i64, i64 }
%struct.isci_stp_request = type { %struct.isci_stp_pio_sgl }
%struct.isci_stp_pio_sgl = type { i64, i32 }
%struct.scu_sgl_element_pair = type { i64, i64, %struct.scu_sgl_element, %struct.scu_sgl_element }
%struct.isci_request = type { i32 }

@SCU_SGL_ELEMENT_PAIR_A = common dso_local global i64 0, align 8
@SCU_SGL_ELEMENT_PAIR_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scu_sgl_element* (%struct.isci_stp_request*)* @pio_sgl_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scu_sgl_element* @pio_sgl_next(%struct.isci_stp_request* %0) #0 {
  %2 = alloca %struct.isci_stp_request*, align 8
  %3 = alloca %struct.scu_sgl_element*, align 8
  %4 = alloca %struct.scu_sgl_element_pair*, align 8
  %5 = alloca %struct.isci_request*, align 8
  %6 = alloca %struct.isci_stp_pio_sgl*, align 8
  store %struct.isci_stp_request* %0, %struct.isci_stp_request** %2, align 8
  %7 = load %struct.isci_stp_request*, %struct.isci_stp_request** %2, align 8
  %8 = call %struct.isci_request* @to_ireq(%struct.isci_stp_request* %7)
  store %struct.isci_request* %8, %struct.isci_request** %5, align 8
  %9 = load %struct.isci_stp_request*, %struct.isci_stp_request** %2, align 8
  %10 = getelementptr inbounds %struct.isci_stp_request, %struct.isci_stp_request* %9, i32 0, i32 0
  store %struct.isci_stp_pio_sgl* %10, %struct.isci_stp_pio_sgl** %6, align 8
  %11 = load %struct.isci_request*, %struct.isci_request** %5, align 8
  %12 = load %struct.isci_stp_pio_sgl*, %struct.isci_stp_pio_sgl** %6, align 8
  %13 = getelementptr inbounds %struct.isci_stp_pio_sgl, %struct.isci_stp_pio_sgl* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.scu_sgl_element_pair* @to_sgl_element_pair(%struct.isci_request* %11, i32 %14)
  store %struct.scu_sgl_element_pair* %15, %struct.scu_sgl_element_pair** %4, align 8
  %16 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %4, align 8
  %17 = icmp ne %struct.scu_sgl_element_pair* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store %struct.scu_sgl_element* null, %struct.scu_sgl_element** %3, align 8
  br label %73

19:                                               ; preds = %1
  %20 = load %struct.isci_stp_pio_sgl*, %struct.isci_stp_pio_sgl** %6, align 8
  %21 = getelementptr inbounds %struct.isci_stp_pio_sgl, %struct.isci_stp_pio_sgl* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SCU_SGL_ELEMENT_PAIR_A, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %4, align 8
  %27 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.scu_sgl_element, %struct.scu_sgl_element* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %4, align 8
  %33 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.scu_sgl_element, %struct.scu_sgl_element* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store %struct.scu_sgl_element* null, %struct.scu_sgl_element** %3, align 8
  br label %44

38:                                               ; preds = %31, %25
  %39 = load i64, i64* @SCU_SGL_ELEMENT_PAIR_B, align 8
  %40 = load %struct.isci_stp_pio_sgl*, %struct.isci_stp_pio_sgl** %6, align 8
  %41 = getelementptr inbounds %struct.isci_stp_pio_sgl, %struct.isci_stp_pio_sgl* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %4, align 8
  %43 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %42, i32 0, i32 3
  store %struct.scu_sgl_element* %43, %struct.scu_sgl_element** %3, align 8
  br label %44

44:                                               ; preds = %38, %37
  br label %72

45:                                               ; preds = %19
  %46 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %4, align 8
  %47 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %4, align 8
  %52 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store %struct.scu_sgl_element* null, %struct.scu_sgl_element** %3, align 8
  br label %71

56:                                               ; preds = %50, %45
  %57 = load %struct.isci_stp_pio_sgl*, %struct.isci_stp_pio_sgl** %6, align 8
  %58 = getelementptr inbounds %struct.isci_stp_pio_sgl, %struct.isci_stp_pio_sgl* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load i64, i64* @SCU_SGL_ELEMENT_PAIR_A, align 8
  %62 = load %struct.isci_stp_pio_sgl*, %struct.isci_stp_pio_sgl** %6, align 8
  %63 = getelementptr inbounds %struct.isci_stp_pio_sgl, %struct.isci_stp_pio_sgl* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.isci_request*, %struct.isci_request** %5, align 8
  %65 = load %struct.isci_stp_pio_sgl*, %struct.isci_stp_pio_sgl** %6, align 8
  %66 = getelementptr inbounds %struct.isci_stp_pio_sgl, %struct.isci_stp_pio_sgl* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.scu_sgl_element_pair* @to_sgl_element_pair(%struct.isci_request* %64, i32 %67)
  store %struct.scu_sgl_element_pair* %68, %struct.scu_sgl_element_pair** %4, align 8
  %69 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %4, align 8
  %70 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %69, i32 0, i32 2
  store %struct.scu_sgl_element* %70, %struct.scu_sgl_element** %3, align 8
  br label %71

71:                                               ; preds = %56, %55
  br label %72

72:                                               ; preds = %71, %44
  br label %73

73:                                               ; preds = %72, %18
  %74 = load %struct.scu_sgl_element*, %struct.scu_sgl_element** %3, align 8
  ret %struct.scu_sgl_element* %74
}

declare dso_local %struct.isci_request* @to_ireq(%struct.isci_stp_request*) #1

declare dso_local %struct.scu_sgl_element_pair* @to_sgl_element_pair(%struct.isci_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
