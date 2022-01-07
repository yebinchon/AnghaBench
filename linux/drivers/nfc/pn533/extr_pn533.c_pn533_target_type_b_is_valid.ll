; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_target_type_b_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_target_type_b_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533_target_type_b = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PN533_TYPE_B_OPC_SENSB_RES = common dso_local global i64 0, align 8
@PN533_TYPE_B_PROT_TYPE_RFU_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn533_target_type_b*, i32)* @pn533_target_type_b_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_target_type_b_is_valid(%struct.pn533_target_type_b* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pn533_target_type_b*, align 8
  %5 = alloca i32, align 4
  store %struct.pn533_target_type_b* %0, %struct.pn533_target_type_b** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 16
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

10:                                               ; preds = %2
  %11 = load %struct.pn533_target_type_b*, %struct.pn533_target_type_b** %4, align 8
  %12 = getelementptr inbounds %struct.pn533_target_type_b, %struct.pn533_target_type_b* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PN533_TYPE_B_OPC_SENSB_RES, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %30

18:                                               ; preds = %10
  %19 = load %struct.pn533_target_type_b*, %struct.pn533_target_type_b** %4, align 8
  %20 = getelementptr inbounds %struct.pn533_target_type_b, %struct.pn533_target_type_b* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @PN533_TYPE_B_PROT_TYPE(i32 %23)
  %25 = load i32, i32* @PN533_TYPE_B_PROT_TYPE_RFU_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %30

29:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28, %17, %9
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @PN533_TYPE_B_PROT_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
