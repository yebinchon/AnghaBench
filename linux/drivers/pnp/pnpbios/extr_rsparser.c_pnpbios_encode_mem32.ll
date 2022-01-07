; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_rsparser.c_pnpbios_encode_mem32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_rsparser.c_pnpbios_encode_mem32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"  encode mem32 %#lx-%#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*, i8*, %struct.resource*)* @pnpbios_encode_mem32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnpbios_encode_mem32(%struct.pnp_dev* %0, i8* %1, %struct.resource* %2) #0 {
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
  %21 = and i64 %20, 255
  %22 = trunc i64 %21 to i8
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 4
  store i8 %22, i8* %24, align 1
  %25 = load i64, i64* %7, align 8
  %26 = lshr i64 %25, 8
  %27 = and i64 %26, 255
  %28 = trunc i64 %27 to i8
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 5
  store i8 %28, i8* %30, align 1
  %31 = load i64, i64* %7, align 8
  %32 = lshr i64 %31, 16
  %33 = and i64 %32, 255
  %34 = trunc i64 %33 to i8
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 6
  store i8 %34, i8* %36, align 1
  %37 = load i64, i64* %7, align 8
  %38 = lshr i64 %37, 24
  %39 = and i64 %38, 255
  %40 = trunc i64 %39 to i8
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 7
  store i8 %40, i8* %42, align 1
  %43 = load i64, i64* %7, align 8
  %44 = and i64 %43, 255
  %45 = trunc i64 %44 to i8
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 8
  store i8 %45, i8* %47, align 1
  %48 = load i64, i64* %7, align 8
  %49 = lshr i64 %48, 8
  %50 = and i64 %49, 255
  %51 = trunc i64 %50 to i8
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 9
  store i8 %51, i8* %53, align 1
  %54 = load i64, i64* %7, align 8
  %55 = lshr i64 %54, 16
  %56 = and i64 %55, 255
  %57 = trunc i64 %56 to i8
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 10
  store i8 %57, i8* %59, align 1
  %60 = load i64, i64* %7, align 8
  %61 = lshr i64 %60, 24
  %62 = and i64 %61, 255
  %63 = trunc i64 %62 to i8
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 11
  store i8 %63, i8* %65, align 1
  %66 = load i64, i64* %8, align 8
  %67 = and i64 %66, 255
  %68 = trunc i64 %67 to i8
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 16
  store i8 %68, i8* %70, align 1
  %71 = load i64, i64* %8, align 8
  %72 = lshr i64 %71, 8
  %73 = and i64 %72, 255
  %74 = trunc i64 %73 to i8
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 17
  store i8 %74, i8* %76, align 1
  %77 = load i64, i64* %8, align 8
  %78 = lshr i64 %77, 16
  %79 = and i64 %78, 255
  %80 = trunc i64 %79 to i8
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 18
  store i8 %80, i8* %82, align 1
  %83 = load i64, i64* %8, align 8
  %84 = lshr i64 %83, 24
  %85 = and i64 %84, 255
  %86 = trunc i64 %85 to i8
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 19
  store i8 %86, i8* %88, align 1
  %89 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %90 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %89, i32 0, i32 0
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %92, %93
  %95 = sub i64 %94, 1
  %96 = call i32 @pnp_dbg(i32* %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %91, i64 %95)
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
