; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_rsparser.c_pnpbios_encode_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_rsparser.c_pnpbios_encode_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"  encode irq mask %#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*, i8*, %struct.resource*)* @pnpbios_encode_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnpbios_encode_irq(%struct.pnp_dev* %0, i8* %1, %struct.resource* %2) #0 {
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i64, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.resource* %2, %struct.resource** %6, align 8
  %8 = load %struct.resource*, %struct.resource** %6, align 8
  %9 = call i64 @pnp_resource_enabled(%struct.resource* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.resource*, %struct.resource** %6, align 8
  %13 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 1, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %7, align 8
  br label %18

17:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %17, %11
  %19 = load i64, i64* %7, align 8
  %20 = and i64 %19, 255
  %21 = trunc i64 %20 to i8
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 %21, i8* %23, align 1
  %24 = load i64, i64* %7, align 8
  %25 = lshr i64 %24, 8
  %26 = and i64 %25, 255
  %27 = trunc i64 %26 to i8
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  store i8 %27, i8* %29, align 1
  %30 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @pnp_dbg(i32* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %32)
  ret void
}

declare dso_local i64 @pnp_resource_enabled(%struct.resource*) #1

declare dso_local i32 @pnp_dbg(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
