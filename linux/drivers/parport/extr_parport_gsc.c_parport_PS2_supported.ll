; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_gsc.c_parport_PS2_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_gsc.c_parport_PS2_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.parport_gsc_private*, i32 }
%struct.parport_gsc_private = type { i32 }

@PARPORT_MODE_TRISTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parport*)* @parport_PS2_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parport_PS2_supported(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.parport_gsc_private*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.parport*, %struct.parport** %2, align 8
  %6 = call i32 @clear_epp_timeout(%struct.parport* %5)
  %7 = load %struct.parport*, %struct.parport** %2, align 8
  %8 = call i32 @parport_gsc_data_reverse(%struct.parport* %7)
  %9 = load %struct.parport*, %struct.parport** %2, align 8
  %10 = call i32 @parport_gsc_write_data(%struct.parport* %9, i32 85)
  %11 = load %struct.parport*, %struct.parport** %2, align 8
  %12 = call i32 @parport_gsc_read_data(%struct.parport* %11)
  %13 = icmp ne i32 %12, 85
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.parport*, %struct.parport** %2, align 8
  %19 = call i32 @parport_gsc_write_data(%struct.parport* %18, i32 170)
  %20 = load %struct.parport*, %struct.parport** %2, align 8
  %21 = call i32 @parport_gsc_read_data(%struct.parport* %20)
  %22 = icmp ne i32 %21, 170
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %17
  %27 = load %struct.parport*, %struct.parport** %2, align 8
  %28 = call i32 @parport_gsc_data_forward(%struct.parport* %27)
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @PARPORT_MODE_TRISTATE, align 4
  %33 = load %struct.parport*, %struct.parport** %2, align 8
  %34 = getelementptr inbounds %struct.parport, %struct.parport* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %45

37:                                               ; preds = %26
  %38 = load %struct.parport*, %struct.parport** %2, align 8
  %39 = getelementptr inbounds %struct.parport, %struct.parport* %38, i32 0, i32 0
  %40 = load %struct.parport_gsc_private*, %struct.parport_gsc_private** %39, align 8
  store %struct.parport_gsc_private* %40, %struct.parport_gsc_private** %4, align 8
  %41 = load %struct.parport_gsc_private*, %struct.parport_gsc_private** %4, align 8
  %42 = getelementptr inbounds %struct.parport_gsc_private, %struct.parport_gsc_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, -33
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %37, %31
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @clear_epp_timeout(%struct.parport*) #1

declare dso_local i32 @parport_gsc_data_reverse(%struct.parport*) #1

declare dso_local i32 @parport_gsc_write_data(%struct.parport*, i32) #1

declare dso_local i32 @parport_gsc_read_data(%struct.parport*) #1

declare dso_local i32 @parport_gsc_data_forward(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
