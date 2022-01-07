; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_update_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_update_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32, i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_switch*, %struct.tb_switch*, i32, i8*, i8*, i8*, i8*, i32)* @update_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_switch(%struct.tb_switch* %0, %struct.tb_switch* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.tb_switch*, align 8
  %10 = alloca %struct.tb_switch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %9, align 8
  store %struct.tb_switch* %1, %struct.tb_switch** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %17 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %18 = call i32 @tb_route(%struct.tb_switch* %17)
  %19 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %20 = call %struct.TYPE_4__* @tb_port_at(i32 %18, %struct.tb_switch* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %23 = call i32* @tb_upstream_port(%struct.tb_switch* %22)
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %26 = call %struct.TYPE_4__* @tb_port_at(i32 %24, %struct.tb_switch* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32* %23, i32** %27, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @upper_32_bits(i32 %28)
  %30 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %31 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @lower_32_bits(i32 %33)
  %35 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %36 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %40 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %43 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %46 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %49 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %16, align 4
  %51 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %52 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %54 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %56 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %55, i32 0, i32 2
  %57 = call i32 @complete(i32* %56)
  ret void
}

declare dso_local %struct.TYPE_4__* @tb_port_at(i32, %struct.tb_switch*) #1

declare dso_local i32 @tb_route(%struct.tb_switch*) #1

declare dso_local i32* @tb_upstream_port(%struct.tb_switch*) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
