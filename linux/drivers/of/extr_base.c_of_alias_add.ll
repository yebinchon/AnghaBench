; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_alias_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_alias_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_prop = type { i32, i64*, i32, i32, %struct.device_node* }
%struct.device_node = type { i32 }

@aliases_lookup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"adding DT alias:%s: stem=%s id=%i node=%pOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alias_prop*, %struct.device_node*, i32, i8*, i32)* @of_alias_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @of_alias_add(%struct.alias_prop* %0, %struct.device_node* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.alias_prop*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.alias_prop* %0, %struct.alias_prop** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.device_node*, %struct.device_node** %7, align 8
  %12 = load %struct.alias_prop*, %struct.alias_prop** %6, align 8
  %13 = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %12, i32 0, i32 4
  store %struct.device_node* %11, %struct.device_node** %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.alias_prop*, %struct.alias_prop** %6, align 8
  %16 = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.alias_prop*, %struct.alias_prop** %6, align 8
  %18 = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @strncpy(i64* %19, i8* %20, i32 %21)
  %23 = load %struct.alias_prop*, %struct.alias_prop** %6, align 8
  %24 = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  store i64 0, i64* %28, align 8
  %29 = load %struct.alias_prop*, %struct.alias_prop** %6, align 8
  %30 = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %29, i32 0, i32 3
  %31 = call i32 @list_add_tail(i32* %30, i32* @aliases_lookup)
  %32 = load %struct.alias_prop*, %struct.alias_prop** %6, align 8
  %33 = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.alias_prop*, %struct.alias_prop** %6, align 8
  %36 = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.alias_prop*, %struct.alias_prop** %6, align 8
  %39 = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.device_node*, %struct.device_node** %7, align 8
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %34, i64* %37, i32 %40, %struct.device_node* %41)
  ret void
}

declare dso_local i32 @strncpy(i64*, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64*, i32, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
