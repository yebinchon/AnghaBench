; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_asus_hides_smbus_lpc_ich6_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_asus_hides_smbus_lpc_ich6_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@asus_hides_smbus = common dso_local global i32 0, align 4
@asus_rcba_base = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Enabled ICH6/i801 SMBus device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @asus_hides_smbus_lpc_ich6_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_hides_smbus_lpc_ich6_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load i32, i32* @asus_hides_smbus, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32*, i32** @asus_rcba_base, align 8
  %7 = icmp ne i32* %6, null
  %8 = xor i1 %7, true
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ true, %1 ], [ %8, %5 ]
  %11 = zext i1 %10 to i32
  %12 = call i64 @likely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %20

15:                                               ; preds = %9
  %16 = load i32*, i32** @asus_rcba_base, align 8
  %17 = call i32 @iounmap(i32* %16)
  store i32* null, i32** @asus_rcba_base, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = call i32 @pci_info(%struct.pci_dev* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
