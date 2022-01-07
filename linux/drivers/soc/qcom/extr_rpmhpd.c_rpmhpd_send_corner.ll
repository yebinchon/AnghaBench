; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmhpd.c_rpmhpd_send_corner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmhpd.c_rpmhpd_send_corner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmhpd = type { i32, i32 }
%struct.tcs_cmd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmhpd*, i32, i32, i32)* @rpmhpd_send_corner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmhpd_send_corner(%struct.rpmhpd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpmhpd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcs_cmd, align 4
  store %struct.rpmhpd* %0, %struct.rpmhpd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %10, i32 0, i32 1
  %14 = load %struct.rpmhpd*, %struct.rpmhpd** %6, align 8
  %15 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.rpmhpd*, %struct.rpmhpd** %6, align 8
  %21 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @rpmh_write(i32 %22, i32 %23, %struct.tcs_cmd* %10, i32 1)
  store i32 %24, i32* %5, align 4
  br label %31

25:                                               ; preds = %4
  %26 = load %struct.rpmhpd*, %struct.rpmhpd** %6, align 8
  %27 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @rpmh_write_async(i32 %28, i32 %29, %struct.tcs_cmd* %10, i32 1)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %25, %19
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @rpmh_write(i32, i32, %struct.tcs_cmd*, i32) #1

declare dso_local i32 @rpmh_write_async(i32, i32, %struct.tcs_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
