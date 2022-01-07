; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_rsparser.c_pnpbios_encode_fixed_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_rsparser.c_pnpbios_encode_fixed_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"  encode fixed_io %#lx-%#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*, i8*, %struct.resource*)* @pnpbios_encode_fixed_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnpbios_encode_fixed_port(%struct.pnp_dev* %0, i8* %1, %struct.resource* %2) #0 {
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.resource* %2, %struct.resource** %6, align 8
  %9 = load %struct.resource*, %struct.resource** %6, align 8
  %10 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.resource*, %struct.resource** %6, align 8
  %13 = call i64 @resource_size(%struct.resource* %12)
  store i64 %13, i64* %8, align 8
  %14 = load %struct.resource*, %struct.resource** %6, align 8
  %15 = call i64 @pnp_resource_enabled(%struct.resource* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.resource*, %struct.resource** %6, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.resource*, %struct.resource** %6, align 8
  %22 = call i64 @resource_size(%struct.resource* %21)
  store i64 %22, i64* %8, align 8
  br label %24

23:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i64, i64* %7, align 8
  %26 = and i64 %25, 255
  %27 = trunc i64 %26 to i8
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 %27, i8* %29, align 1
  %30 = load i64, i64* %7, align 8
  %31 = lshr i64 %30, 8
  %32 = and i64 %31, 255
  %33 = trunc i64 %32 to i8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  store i8 %33, i8* %35, align 1
  %36 = load i64, i64* %8, align 8
  %37 = and i64 %36, 255
  %38 = trunc i64 %37 to i8
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  store i8 %38, i8* %40, align 1
  %41 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %44, %45
  %47 = sub i64 %46, 1
  %48 = call i32 @pnp_dbg(i32* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %47)
  ret void
}

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i64 @pnp_resource_enabled(%struct.resource*) #1

declare dso_local i32 @pnp_dbg(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
