; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_pc.c_parport_irq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_pc.c_parport_irq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i64, i32, %struct.parport_pc_private* }
%struct.parport_pc_private = type { i64 }

@PARPORT_IRQ_NONE = common dso_local global i64 0, align 8
@PARPORT_MODE_EPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parport*)* @parport_irq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parport_irq_probe(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.parport_pc_private*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  %4 = load %struct.parport*, %struct.parport** %2, align 8
  %5 = getelementptr inbounds %struct.parport, %struct.parport* %4, i32 0, i32 2
  %6 = load %struct.parport_pc_private*, %struct.parport_pc_private** %5, align 8
  store %struct.parport_pc_private* %6, %struct.parport_pc_private** %3, align 8
  %7 = load %struct.parport_pc_private*, %struct.parport_pc_private** %3, align 8
  %8 = getelementptr inbounds %struct.parport_pc_private, %struct.parport_pc_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.parport*, %struct.parport** %2, align 8
  %13 = call i64 @programmable_irq_support(%struct.parport* %12)
  %14 = load %struct.parport*, %struct.parport** %2, align 8
  %15 = getelementptr inbounds %struct.parport, %struct.parport* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.parport*, %struct.parport** %2, align 8
  %17 = getelementptr inbounds %struct.parport, %struct.parport* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PARPORT_IRQ_NONE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = load %struct.parport*, %struct.parport** %2, align 8
  %23 = call i64 @irq_probe_ECP(%struct.parport* %22)
  %24 = load %struct.parport*, %struct.parport** %2, align 8
  %25 = getelementptr inbounds %struct.parport, %struct.parport* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %21, %11
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.parport*, %struct.parport** %2, align 8
  %29 = getelementptr inbounds %struct.parport, %struct.parport* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PARPORT_IRQ_NONE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load %struct.parport_pc_private*, %struct.parport_pc_private** %3, align 8
  %35 = getelementptr inbounds %struct.parport_pc_private, %struct.parport_pc_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.parport*, %struct.parport** %2, align 8
  %40 = getelementptr inbounds %struct.parport, %struct.parport* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PARPORT_MODE_EPP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.parport*, %struct.parport** %2, align 8
  %47 = call i8* @irq_probe_EPP(%struct.parport* %46)
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.parport*, %struct.parport** %2, align 8
  %50 = getelementptr inbounds %struct.parport, %struct.parport* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %45, %38, %33, %27
  %52 = load %struct.parport*, %struct.parport** %2, align 8
  %53 = call i32 @clear_epp_timeout(%struct.parport* %52)
  %54 = load %struct.parport*, %struct.parport** %2, align 8
  %55 = getelementptr inbounds %struct.parport, %struct.parport* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PARPORT_IRQ_NONE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %51
  %60 = load %struct.parport*, %struct.parport** %2, align 8
  %61 = getelementptr inbounds %struct.parport, %struct.parport* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PARPORT_MODE_EPP, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.parport*, %struct.parport** %2, align 8
  %68 = call i8* @irq_probe_EPP(%struct.parport* %67)
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.parport*, %struct.parport** %2, align 8
  %71 = getelementptr inbounds %struct.parport, %struct.parport* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %66, %59, %51
  %73 = load %struct.parport*, %struct.parport** %2, align 8
  %74 = call i32 @clear_epp_timeout(%struct.parport* %73)
  %75 = load %struct.parport*, %struct.parport** %2, align 8
  %76 = getelementptr inbounds %struct.parport, %struct.parport* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PARPORT_IRQ_NONE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.parport*, %struct.parport** %2, align 8
  %82 = call i64 @irq_probe_SPP(%struct.parport* %81)
  %83 = load %struct.parport*, %struct.parport** %2, align 8
  %84 = getelementptr inbounds %struct.parport, %struct.parport* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %80, %72
  %86 = load %struct.parport*, %struct.parport** %2, align 8
  %87 = getelementptr inbounds %struct.parport, %struct.parport* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PARPORT_IRQ_NONE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.parport*, %struct.parport** %2, align 8
  %93 = call i64 @get_superio_irq(%struct.parport* %92)
  %94 = load %struct.parport*, %struct.parport** %2, align 8
  %95 = getelementptr inbounds %struct.parport, %struct.parport* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %91, %85
  %97 = load %struct.parport*, %struct.parport** %2, align 8
  %98 = getelementptr inbounds %struct.parport, %struct.parport* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  ret i32 %100
}

declare dso_local i64 @programmable_irq_support(%struct.parport*) #1

declare dso_local i64 @irq_probe_ECP(%struct.parport*) #1

declare dso_local i8* @irq_probe_EPP(%struct.parport*) #1

declare dso_local i32 @clear_epp_timeout(%struct.parport*) #1

declare dso_local i64 @irq_probe_SPP(%struct.parport*) #1

declare dso_local i64 @get_superio_irq(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
