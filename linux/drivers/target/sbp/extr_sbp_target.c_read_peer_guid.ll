; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_read_peer_guid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_read_peer_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_management_request = type { i32, i32, i32, i32 }

@TCODE_READ_QUADLET_REQUEST = common dso_local global i32 0, align 4
@CSR_REGISTER_BASE = common dso_local global i32 0, align 4
@CSR_CONFIG_ROM = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sbp_management_request*)* @read_peer_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_peer_guid(i32* %0, %struct.sbp_management_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sbp_management_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.sbp_management_request* %1, %struct.sbp_management_request** %5, align 8
  %9 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %10 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %13 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %14 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %17 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %20 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CSR_REGISTER_BASE, align 4
  %23 = load i32, i32* @CSR_CONFIG_ROM, align 4
  %24 = or i32 %22, %23
  %25 = add nsw i32 %24, 12
  %26 = call i32 @sbp_run_transaction(i32 %11, i32 %12, i32 %15, i32 %18, i32 %21, i32 %25, i32* %7, i32 4)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @RCODE_COMPLETE, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %65

32:                                               ; preds = %2
  %33 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %34 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %37 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %38 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %41 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %44 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CSR_REGISTER_BASE, align 4
  %47 = load i32, i32* @CSR_CONFIG_ROM, align 4
  %48 = or i32 %46, %47
  %49 = add nsw i32 %48, 16
  %50 = call i32 @sbp_run_transaction(i32 %35, i32 %36, i32 %39, i32 %42, i32 %45, i32 %49, i32* %8, i32 4)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @RCODE_COMPLETE, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %32
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %65

56:                                               ; preds = %32
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @be32_to_cpu(i32 %57)
  %59 = shl i32 %58, 32
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @be32_to_cpu(i32 %60)
  %62 = or i32 %59, %61
  %63 = load i32*, i32** %4, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %56, %54, %30
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @sbp_run_transaction(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
