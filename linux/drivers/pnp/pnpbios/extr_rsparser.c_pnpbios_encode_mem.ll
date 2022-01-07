; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_rsparser.c_pnpbios_encode_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_rsparser.c_pnpbios_encode_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"  encode mem %#lx-%#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*, i8*, %struct.resource*)* @pnpbios_encode_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnpbios_encode_mem(%struct.pnp_dev* %0, i8* %1, %struct.resource* %2) #0 {
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.resource* %2, %struct.resource** %6, align 8
  %9 = load %struct.resource*, %struct.resource** %6, align 8
  %10 = call i64 @pnp_resource_enabled(%struct.resource* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.resource*, %struct.resource** %6, align 8
  %14 = getelementptr inbounds %struct.resource, %struct.resource* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.resource*, %struct.resource** %6, align 8
  %17 = call i64 @resource_size(%struct.resource* %16)
  store i64 %17, i64* %8, align 8
  br label %19

18:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %18, %12
  %20 = load i64, i64* %7, align 8
  %21 = lshr i64 %20, 8
  %22 = and i64 %21, 255
  %23 = trunc i64 %22 to i8
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 4
  store i8 %23, i8* %25, align 1
  %26 = load i64, i64* %7, align 8
  %27 = lshr i64 %26, 8
  %28 = lshr i64 %27, 8
  %29 = and i64 %28, 255
  %30 = trunc i64 %29 to i8
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 5
  store i8 %30, i8* %32, align 1
  %33 = load i64, i64* %7, align 8
  %34 = lshr i64 %33, 8
  %35 = and i64 %34, 255
  %36 = trunc i64 %35 to i8
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 6
  store i8 %36, i8* %38, align 1
  %39 = load i64, i64* %7, align 8
  %40 = lshr i64 %39, 8
  %41 = lshr i64 %40, 8
  %42 = and i64 %41, 255
  %43 = trunc i64 %42 to i8
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 7
  store i8 %43, i8* %45, align 1
  %46 = load i64, i64* %8, align 8
  %47 = lshr i64 %46, 8
  %48 = and i64 %47, 255
  %49 = trunc i64 %48 to i8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 10
  store i8 %49, i8* %51, align 1
  %52 = load i64, i64* %8, align 8
  %53 = lshr i64 %52, 8
  %54 = lshr i64 %53, 8
  %55 = and i64 %54, 255
  %56 = trunc i64 %55 to i8
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 11
  store i8 %56, i8* %58, align 1
  %59 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %59, i32 0, i32 0
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %62, %63
  %65 = sub i64 %64, 1
  %66 = call i32 @pnp_dbg(i32* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %61, i64 %65)
  ret void
}

declare dso_local i64 @pnp_resource_enabled(%struct.resource*) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @pnp_dbg(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
