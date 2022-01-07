; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_zd1211b_hw_reset_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_zd1211b_hw_reset_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_ioreq16 = type { i32, i32 }
%struct.zd_chip = type { i32 }

@zd1211b_hw_reset_phy.ioreqs = internal constant [138 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i32 264, i32 20 }, %struct.zd_ioreq16 { i32 263, i32 6 }, %struct.zd_ioreq16 { i32 198, i32 38 }, %struct.zd_ioreq16 { i32 185, i32 56 }, %struct.zd_ioreq16 { i32 174, i32 128 }, %struct.zd_ioreq16 { i32 138, i32 224 }, %struct.zd_ioreq16 { i32 262, i32 129 }, %struct.zd_ioreq16 { i32 251, i32 0 }, %struct.zd_ioreq16 { i32 240, i32 240 }, %struct.zd_ioreq16 { i32 234, i32 140 }, %struct.zd_ioreq16 { i32 227, i32 128 }, %struct.zd_ioreq16 { i32 218, i32 61 }, %struct.zd_ioreq16 { i32 214, i32 32 }, %struct.zd_ioreq16 { i32 203, i32 30 }, %struct.zd_ioreq16 { i32 200, i32 10 }, %struct.zd_ioreq16 { i32 199, i32 72 }, %struct.zd_ioreq16 { i32 197, i32 16 }, %struct.zd_ioreq16 { i32 194, i32 14 }, %struct.zd_ioreq16 { i32 193, i32 35 }, %struct.zd_ioreq16 { i32 192, i32 144 }, %struct.zd_ioreq16 { i32 191, i32 20 }, %struct.zd_ioreq16 { i32 190, i32 64 }, %struct.zd_ioreq16 { i32 189, i32 16 }, %struct.zd_ioreq16 { i32 188, i32 16 }, %struct.zd_ioreq16 { i32 187, i32 127 }, %struct.zd_ioreq16 { i32 186, i32 128 }, %struct.zd_ioreq16 { i32 184, i32 75 }, %struct.zd_ioreq16 { i32 183, i32 96 }, %struct.zd_ioreq16 { i32 182, i32 67 }, %struct.zd_ioreq16 { i32 181, i32 8 }, %struct.zd_ioreq16 { i32 180, i32 6 }, %struct.zd_ioreq16 { i32 179, i32 10 }, %struct.zd_ioreq16 { i32 178, i32 0 }, %struct.zd_ioreq16 { i32 177, i32 0 }, %struct.zd_ioreq16 { i32 176, i32 56 }, %struct.zd_ioreq16 { i32 175, i32 12 }, %struct.zd_ioreq16 { i32 173, i32 132 }, %struct.zd_ioreq16 { i32 172, i32 42 }, %struct.zd_ioreq16 { i32 171, i32 128 }, %struct.zd_ioreq16 { i32 170, i32 16 }, %struct.zd_ioreq16 { i32 169, i32 51 }, %struct.zd_ioreq16 { i32 168, i32 255 }, %struct.zd_ioreq16 { i32 167, i32 30 }, %struct.zd_ioreq16 { i32 166, i32 38 }, %struct.zd_ioreq16 { i32 165, i32 91 }, %struct.zd_ioreq16 { i32 164, i32 208 }, %struct.zd_ioreq16 { i32 163, i32 4 }, %struct.zd_ioreq16 { i32 162, i32 88 }, %struct.zd_ioreq16 { i32 161, i32 201 }, %struct.zd_ioreq16 { i32 160, i32 136 }, %struct.zd_ioreq16 { i32 159, i32 65 }, %struct.zd_ioreq16 { i32 158, i32 35 }, %struct.zd_ioreq16 { i32 157, i32 16 }, %struct.zd_ioreq16 { i32 156, i32 255 }, %struct.zd_ioreq16 { i32 155, i32 50 }, %struct.zd_ioreq16 { i32 154, i32 48 }, %struct.zd_ioreq16 { i32 153, i32 101 }, %struct.zd_ioreq16 { i32 152, i32 65 }, %struct.zd_ioreq16 { i32 151, i32 27 }, %struct.zd_ioreq16 { i32 150, i32 48 }, %struct.zd_ioreq16 { i32 149, i32 240 }, %struct.zd_ioreq16 { i32 148, i32 100 }, %struct.zd_ioreq16 { i32 147, i32 100 }, %struct.zd_ioreq16 { i32 146, i32 0 }, %struct.zd_ioreq16 { i32 145, i32 36 }, %struct.zd_ioreq16 { i32 144, i32 4 }, %struct.zd_ioreq16 { i32 143, i32 0 }, %struct.zd_ioreq16 { i32 142, i32 12 }, %struct.zd_ioreq16 { i32 141, i32 18 }, %struct.zd_ioreq16 { i32 140, i32 12 }, %struct.zd_ioreq16 { i32 139, i32 0 }, %struct.zd_ioreq16 { i32 137, i32 88 }, %struct.zd_ioreq16 { i32 136, i32 4 }, %struct.zd_ioreq16 { i32 135, i32 0 }, %struct.zd_ioreq16 { i32 134, i32 0 }, %struct.zd_ioreq16 { i32 133, i32 1 }, %struct.zd_ioreq16 { i32 132, i32 32 }, %struct.zd_ioreq16 { i32 131, i32 80 }, %struct.zd_ioreq16 { i32 130, i32 55 }, %struct.zd_ioreq16 { i32 129, i32 53 }, %struct.zd_ioreq16 { i32 128, i32 0 }, %struct.zd_ioreq16 { i32 261, i32 1 }, %struct.zd_ioreq16 { i32 260, i32 19 }, %struct.zd_ioreq16 { i32 259, i32 39 }, %struct.zd_ioreq16 { i32 258, i32 39 }, %struct.zd_ioreq16 { i32 257, i32 24 }, %struct.zd_ioreq16 { i32 256, i32 18 }, %struct.zd_ioreq16 { i32 255, i32 4 }, %struct.zd_ioreq16 { i32 254, i32 0 }, %struct.zd_ioreq16 { i32 253, i32 10 }, %struct.zd_ioreq16 { i32 252, i32 39 }, %struct.zd_ioreq16 { i32 250, i32 39 }, %struct.zd_ioreq16 { i32 249, i32 39 }, %struct.zd_ioreq16 { i32 248, i32 39 }, %struct.zd_ioreq16 { i32 247, i32 39 }, %struct.zd_ioreq16 { i32 246, i32 39 }, %struct.zd_ioreq16 { i32 245, i32 38 }, %struct.zd_ioreq16 { i32 244, i32 36 }, %struct.zd_ioreq16 { i32 243, i32 252 }, %struct.zd_ioreq16 { i32 242, i32 250 }, %struct.zd_ioreq16 { i32 241, i32 30 }, %struct.zd_ioreq16 { i32 239, i32 144 }, %struct.zd_ioreq16 { i32 238, i32 0 }, %struct.zd_ioreq16 { i32 237, i32 0 }, %struct.zd_ioreq16 { i32 236, i32 20 }, %struct.zd_ioreq16 { i32 235, i32 18 }, %struct.zd_ioreq16 { i32 233, i32 16 }, %struct.zd_ioreq16 { i32 232, i32 12 }, %struct.zd_ioreq16 { i32 231, i32 223 }, %struct.zd_ioreq16 { i32 230, i32 160 }, %struct.zd_ioreq16 { i32 229, i32 168 }, %struct.zd_ioreq16 { i32 228, i32 180 }, %struct.zd_ioreq16 { i32 226, i32 152 }, %struct.zd_ioreq16 { i32 225, i32 130 }, %struct.zd_ioreq16 { i32 224, i32 83 }, %struct.zd_ioreq16 { i32 223, i32 28 }, %struct.zd_ioreq16 { i32 222, i32 108 }, %struct.zd_ioreq16 { i32 221, i32 7 }, %struct.zd_ioreq16 { i32 220, i32 64 }, %struct.zd_ioreq16 { i32 219, i32 64 }, %struct.zd_ioreq16 { i32 217, i32 20 }, %struct.zd_ioreq16 { i32 216, i32 24 }, %struct.zd_ioreq16 { i32 215, i32 112 }, %struct.zd_ioreq16 { i32 213, i32 254 }, %struct.zd_ioreq16 { i32 212, i32 238 }, %struct.zd_ioreq16 { i32 211, i32 170 }, %struct.zd_ioreq16 { i32 210, i32 250 }, %struct.zd_ioreq16 { i32 209, i32 250 }, %struct.zd_ioreq16 { i32 208, i32 234 }, %struct.zd_ioreq16 { i32 207, i32 190 }, %struct.zd_ioreq16 { i32 206, i32 190 }, %struct.zd_ioreq16 { i32 205, i32 106 }, %struct.zd_ioreq16 { i32 204, i32 186 }, %struct.zd_ioreq16 { i32 202, i32 186 }, %struct.zd_ioreq16 { i32 201, i32 186 }, %struct.zd_ioreq16 { i32 195, i32 125 }, %struct.zd_ioreq16 zeroinitializer, %struct.zd_ioreq16 { i32 196, i32 48 }], align 16
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_chip*)* @zd1211b_hw_reset_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1211b_hw_reset_phy(%struct.zd_chip* %0) #0 {
  %2 = alloca %struct.zd_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %2, align 8
  %5 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %6 = call i32 @zd_chip_dev(%struct.zd_chip* %5)
  %7 = call i32 @dev_dbg_f(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %9 = call i32 @zd_chip_lock_phy_regs(%struct.zd_chip* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* getelementptr inbounds ([138 x %struct.zd_ioreq16], [138 x %struct.zd_ioreq16]* @zd1211b_hw_reset_phy.ioreqs, i64 0, i64 0))
  %16 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %14, %struct.zd_ioreq16* getelementptr inbounds ([138 x %struct.zd_ioreq16], [138 x %struct.zd_ioreq16]* @zd1211b_hw_reset_phy.ioreqs, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %18 = call i32 @zd_chip_unlock_phy_regs(%struct.zd_chip* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %21, %13
  br label %27

27:                                               ; preds = %26, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @dev_dbg_f(i32, i8*) #1

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #1

declare dso_local i32 @zd_chip_lock_phy_regs(%struct.zd_chip*) #1

declare dso_local i32 @zd_iowrite16a_locked(%struct.zd_chip*, %struct.zd_ioreq16*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq16*) #1

declare dso_local i32 @zd_chip_unlock_phy_regs(%struct.zd_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
