; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_unregister_partner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_unregister_partner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_connector = type { i32* }

@UCSI_RECIPIENT_SOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucsi_connector*)* @ucsi_unregister_partner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucsi_unregister_partner(%struct.ucsi_connector* %0) #0 {
  %2 = alloca %struct.ucsi_connector*, align 8
  store %struct.ucsi_connector* %0, %struct.ucsi_connector** %2, align 8
  %3 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %4 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %18

8:                                                ; preds = %1
  %9 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %10 = load i32, i32* @UCSI_RECIPIENT_SOP, align 4
  %11 = call i32 @ucsi_unregister_altmodes(%struct.ucsi_connector* %9, i32 %10)
  %12 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %13 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @typec_unregister_partner(i32* %14)
  %16 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %17 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @ucsi_unregister_altmodes(%struct.ucsi_connector*, i32) #1

declare dso_local i32 @typec_unregister_partner(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
