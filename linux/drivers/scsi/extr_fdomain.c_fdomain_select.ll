; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain.c_fdomain_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain.c_fdomain_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.fdomain = type { i64 }

@BCTL_BUSEN = common dso_local global i32 0, align 4
@BCTL_SEL = common dso_local global i32 0, align 4
@REG_BCTL = common dso_local global i64 0, align 8
@REG_SCSI_DATA_NOACK = common dso_local global i64 0, align 8
@PARITY_MASK = common dso_local global i32 0, align 4
@REG_ACTL = common dso_local global i64 0, align 8
@REG_BSTAT = common dso_local global i64 0, align 8
@BSTAT_BSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i32)* @fdomain_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdomain_select(%struct.Scsi_Host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.fdomain*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %10 = call %struct.fdomain* @shost_priv(%struct.Scsi_Host* %9)
  store %struct.fdomain* %10, %struct.fdomain** %8, align 8
  %11 = load i32, i32* @BCTL_BUSEN, align 4
  %12 = load i32, i32* @BCTL_SEL, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.fdomain*, %struct.fdomain** %8, align 8
  %15 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @REG_BCTL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @outb(i32 %13, i64 %18)
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = or i32 %23, %25
  %27 = load %struct.fdomain*, %struct.fdomain** %8, align 8
  %28 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REG_SCSI_DATA_NOACK, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outb(i32 %26, i64 %31)
  %33 = load i32, i32* @PARITY_MASK, align 4
  %34 = load %struct.fdomain*, %struct.fdomain** %8, align 8
  %35 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @REG_ACTL, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outb(i32 %33, i64 %38)
  store i64 350, i64* %7, align 8
  br label %40

40:                                               ; preds = %61, %2
  %41 = load %struct.fdomain*, %struct.fdomain** %8, align 8
  %42 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @REG_BSTAT, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @inb(i64 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @BSTAT_BSY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = load i32, i32* @BCTL_BUSEN, align 4
  %53 = load %struct.fdomain*, %struct.fdomain** %8, align 8
  %54 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @REG_BCTL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @outb(i32 %52, i64 %57)
  store i32 0, i32* %3, align 4
  br label %68

59:                                               ; preds = %40
  %60 = call i32 @mdelay(i32 1)
  br label %61

61:                                               ; preds = %59
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* %7, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %40, label %65

65:                                               ; preds = %61
  %66 = load %struct.fdomain*, %struct.fdomain** %8, align 8
  %67 = call i32 @fdomain_make_bus_idle(%struct.fdomain* %66)
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %51
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.fdomain* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @fdomain_make_bus_idle(%struct.fdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
