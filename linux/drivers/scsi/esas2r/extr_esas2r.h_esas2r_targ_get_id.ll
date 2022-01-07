; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r.h_esas2r_targ_get_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r.h_esas2r_targ_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_target = type { i32 }
%struct.esas2r_adapter = type { %struct.esas2r_target* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_target*, %struct.esas2r_adapter*)* @esas2r_targ_get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esas2r_targ_get_id(%struct.esas2r_target* %0, %struct.esas2r_adapter* %1) #0 {
  %3 = alloca %struct.esas2r_target*, align 8
  %4 = alloca %struct.esas2r_adapter*, align 8
  store %struct.esas2r_target* %0, %struct.esas2r_target** %3, align 8
  store %struct.esas2r_adapter* %1, %struct.esas2r_adapter** %4, align 8
  %5 = load %struct.esas2r_target*, %struct.esas2r_target** %3, align 8
  %6 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %7 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %6, i32 0, i32 0
  %8 = load %struct.esas2r_target*, %struct.esas2r_target** %7, align 8
  %9 = ptrtoint %struct.esas2r_target* %5 to i64
  %10 = ptrtoint %struct.esas2r_target* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 4
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
