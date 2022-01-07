; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_pkt_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_pkt_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.fc_lport.0*, %struct.fc_fcp_pkt*, i32)* }
%struct.fc_lport.0 = type opaque
%struct.fc_fcp_pkt = type opaque
%struct.fc_fcp_pkt.1 = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_7__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.fc_fcp_internal = type { i32, i32 }

@FCP_CFL_LEN_MASK = common dso_local global i32 0, align 4
@fc_fcp_recv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_lport*, %struct.fc_fcp_pkt.1*)* @fc_fcp_pkt_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_fcp_pkt_send(%struct.fc_lport* %0, %struct.fc_fcp_pkt.1* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_fcp_pkt.1*, align 8
  %5 = alloca %struct.fc_fcp_internal*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_fcp_pkt.1* %1, %struct.fc_fcp_pkt.1** %4, align 8
  %8 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %9 = call %struct.fc_fcp_internal* @fc_get_scsi_internal(%struct.fc_lport* %8)
  store %struct.fc_fcp_internal* %9, %struct.fc_fcp_internal** %5, align 8
  %10 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %11 = bitcast %struct.fc_fcp_pkt.1* %10 to i8*
  %12 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %13 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %12, i32 0, i32 2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i8* %11, i8** %16, align 8
  %17 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %18 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @htonl(i32 %19)
  %21 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %22 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 4
  %24 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %25 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FCP_CFL_LEN_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %31 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %34 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %33, i32 0, i32 2
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %41 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = call i32 @int_to_scsilun(i32 %39, i32* %42)
  %44 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %45 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %49 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %48, i32 0, i32 2
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %54 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %53, i32 0, i32 2
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @memcpy(i32 %47, i32 %52, i32 %57)
  %59 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %60 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %59, i32 0, i32 0
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %64 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %63, i32 0, i32 1
  %65 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %66 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %65, i32 0, i32 1
  %67 = call i32 @list_add_tail(i32* %64, i32* %66)
  %68 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %69 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %68, i32 0, i32 0
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %73 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32 (%struct.fc_lport.0*, %struct.fc_fcp_pkt*, i32)*, i32 (%struct.fc_lport.0*, %struct.fc_fcp_pkt*, i32)** %74, align 8
  %76 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %77 = bitcast %struct.fc_lport* %76 to %struct.fc_lport.0*
  %78 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %79 = bitcast %struct.fc_fcp_pkt.1* %78 to %struct.fc_fcp_pkt*
  %80 = load i32, i32* @fc_fcp_recv, align 4
  %81 = call i32 %75(%struct.fc_lport.0* %77, %struct.fc_fcp_pkt* %79, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %2
  %86 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %87 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %86, i32 0, i32 0
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @spin_lock_irqsave(i32* %87, i64 %88)
  %90 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %91 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %90, i32 0, i32 2
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  store i8* null, i8** %94, align 8
  %95 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %96 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %95, i32 0, i32 1
  %97 = call i32 @list_del(i32* %96)
  %98 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %99 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %98, i32 0, i32 0
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  br label %102

102:                                              ; preds = %85, %2
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local %struct.fc_fcp_internal* @fc_get_scsi_internal(%struct.fc_lport*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @int_to_scsilun(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
