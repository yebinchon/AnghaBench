; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_nvm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_nvm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { %struct.tb_switch_nvm* }
%struct.tb_switch_nvm = type { i32, i32, i64, i64, i32 }

@nvm_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_switch*)* @tb_switch_nvm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tb_switch_nvm_remove(%struct.tb_switch* %0) #0 {
  %2 = alloca %struct.tb_switch*, align 8
  %3 = alloca %struct.tb_switch_nvm*, align 8
  store %struct.tb_switch* %0, %struct.tb_switch** %2, align 8
  %4 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %5 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %4, i32 0, i32 0
  %6 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %5, align 8
  store %struct.tb_switch_nvm* %6, %struct.tb_switch_nvm** %3, align 8
  %7 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %8 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %7, i32 0, i32 0
  store %struct.tb_switch_nvm* null, %struct.tb_switch_nvm** %8, align 8
  %9 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %3, align 8
  %10 = icmp ne %struct.tb_switch_nvm* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %51

12:                                               ; preds = %1
  %13 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %3, align 8
  %14 = getelementptr inbounds %struct.tb_switch_nvm, %struct.tb_switch_nvm* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %19 = call i32 @nvm_clear_auth_status(%struct.tb_switch* %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %3, align 8
  %22 = getelementptr inbounds %struct.tb_switch_nvm, %struct.tb_switch_nvm* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %3, align 8
  %27 = getelementptr inbounds %struct.tb_switch_nvm, %struct.tb_switch_nvm* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @nvmem_unregister(i64 %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %3, align 8
  %32 = getelementptr inbounds %struct.tb_switch_nvm, %struct.tb_switch_nvm* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %3, align 8
  %37 = getelementptr inbounds %struct.tb_switch_nvm, %struct.tb_switch_nvm* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @nvmem_unregister(i64 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %3, align 8
  %42 = getelementptr inbounds %struct.tb_switch_nvm, %struct.tb_switch_nvm* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ida_simple_remove(i32* @nvm_ida, i32 %43)
  %45 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %3, align 8
  %46 = getelementptr inbounds %struct.tb_switch_nvm, %struct.tb_switch_nvm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @vfree(i32 %47)
  %49 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %3, align 8
  %50 = call i32 @kfree(%struct.tb_switch_nvm* %49)
  br label %51

51:                                               ; preds = %40, %11
  ret void
}

declare dso_local i32 @nvm_clear_auth_status(%struct.tb_switch*) #1

declare dso_local i32 @nvmem_unregister(i64) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(%struct.tb_switch_nvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
