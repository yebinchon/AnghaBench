; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_debugfs.c_bfad_reg_offset_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_debugfs.c_bfad_reg_offset_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }

@BFA_STATUS_EINVAL = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_s*, i32, i32)* @bfad_reg_offset_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_reg_offset_check(%struct.bfa_s* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = ashr i32 %9, 15
  %11 = and i32 %10, 7
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 %16, 2
  %18 = add nsw i32 %15, %17
  %19 = icmp sgt i32 %18, 32768
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @BFA_STATUS_EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %50

22:                                               ; preds = %14
  br label %48

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 %28, 2
  %30 = add nsw i32 %27, %29
  %31 = icmp sgt i32 %30, 65536
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @BFA_STATUS_EINVAL, align 4
  store i32 %33, i32* %4, align 4
  br label %50

34:                                               ; preds = %26
  br label %47

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 %37, 2
  %39 = add nsw i32 %36, %38
  %40 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %41 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %40, i32 0, i32 0
  %42 = call i32 @BFA_REG_ADDRMSK(i32* %41)
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @BFA_STATUS_EINVAL, align 4
  store i32 %45, i32* %4, align 4
  br label %50

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %34
  br label %48

48:                                               ; preds = %47, %22
  %49 = load i32, i32* @BFA_STATUS_OK, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %44, %32, %20
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @BFA_REG_ADDRMSK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
