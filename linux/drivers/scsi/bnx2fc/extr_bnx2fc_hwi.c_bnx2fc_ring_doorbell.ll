; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_ring_doorbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_ring_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_rport = type { i32, i32, i32, %struct.b577xx_doorbell_set_prod }
%struct.b577xx_doorbell_set_prod = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2fc_ring_doorbell(%struct.bnx2fc_rport* %0) #0 {
  %2 = alloca %struct.bnx2fc_rport*, align 8
  %3 = alloca %struct.b577xx_doorbell_set_prod*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2fc_rport* %0, %struct.bnx2fc_rport** %2, align 8
  %5 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %2, align 8
  %6 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %5, i32 0, i32 3
  store %struct.b577xx_doorbell_set_prod* %6, %struct.b577xx_doorbell_set_prod** %3, align 8
  %7 = call i32 (...) @wmb()
  %8 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %2, align 8
  %9 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %2, align 8
  %12 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 15
  %15 = or i32 %10, %14
  %16 = load %struct.b577xx_doorbell_set_prod*, %struct.b577xx_doorbell_set_prod** %3, align 8
  %17 = getelementptr inbounds %struct.b577xx_doorbell_set_prod, %struct.b577xx_doorbell_set_prod* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.b577xx_doorbell_set_prod*, %struct.b577xx_doorbell_set_prod** %3, align 8
  %19 = bitcast %struct.b577xx_doorbell_set_prod* %18 to i32*
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %2, align 8
  %24 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @writel(i32 %22, i32 %25)
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
