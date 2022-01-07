; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_csk_return_rx_credits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_csk_return_rx_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i64, i64, i64, i64, i32, i32, %struct.cxgbi_device* }
%struct.cxgbi_device = type { i64, i64 (%struct.cxgbi_sock*, i64)* }

@CXGBI_DBG_PDU_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"csk 0x%p,%u,0x%lx,%u, seq %u, wup %u, thre %u, %u.\0A\00", align 1
@CTP_ESTABLISHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_sock*, i32)* @csk_return_rx_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csk_return_rx_credits(%struct.cxgbi_sock* %0, i32 %1) #0 {
  %3 = alloca %struct.cxgbi_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxgbi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %9 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %8, i32 0, i32 6
  %10 = load %struct.cxgbi_device*, %struct.cxgbi_device** %9, align 8
  store %struct.cxgbi_device* %10, %struct.cxgbi_device** %5, align 8
  %11 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %12 = shl i32 1, %11
  %13 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %14 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %15 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %18 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %21 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %24 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %27 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.cxgbi_device*, %struct.cxgbi_device** %5, align 8
  %30 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %33 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @log_debug(i32 %12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %13, i64 %16, i32 %19, i32 %22, i64 %25, i64 %28, i64 %31, i64 %34)
  %36 = load %struct.cxgbi_device*, %struct.cxgbi_device** %5, align 8
  %37 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %2
  br label %90

41:                                               ; preds = %2
  %42 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %43 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CTP_ESTABLISHED, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %90

48:                                               ; preds = %41
  %49 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %50 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %53 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %90

63:                                               ; preds = %48
  %64 = load i64, i64* %7, align 8
  %65 = add nsw i64 %64, 16384
  %66 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %67 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %65, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %63
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.cxgbi_device*, %struct.cxgbi_device** %5, align 8
  %76 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %74, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %73, %63
  %80 = load %struct.cxgbi_device*, %struct.cxgbi_device** %5, align 8
  %81 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %80, i32 0, i32 1
  %82 = load i64 (%struct.cxgbi_sock*, i64)*, i64 (%struct.cxgbi_sock*, i64)** %81, align 8
  %83 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i64 %82(%struct.cxgbi_sock* %83, i64 %84)
  %86 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %87 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, %85
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %40, %47, %62, %79, %73
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i64, i32, i32, i64, i64, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
