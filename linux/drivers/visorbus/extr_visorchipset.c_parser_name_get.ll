; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_parser_name_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_parser_name_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_context = type { i64, i8*, i64, %struct.visor_controlvm_parameters_header }
%struct.visor_controlvm_parameters_header = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser_context*)* @parser_name_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parser_name_get(%struct.parser_context* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.parser_context*, align 8
  %4 = alloca %struct.visor_controlvm_parameters_header*, align 8
  store %struct.parser_context* %0, %struct.parser_context** %3, align 8
  %5 = load %struct.parser_context*, %struct.parser_context** %3, align 8
  %6 = getelementptr inbounds %struct.parser_context, %struct.parser_context* %5, i32 0, i32 3
  store %struct.visor_controlvm_parameters_header* %6, %struct.visor_controlvm_parameters_header** %4, align 8
  %7 = load %struct.visor_controlvm_parameters_header*, %struct.visor_controlvm_parameters_header** %4, align 8
  %8 = getelementptr inbounds %struct.visor_controlvm_parameters_header, %struct.visor_controlvm_parameters_header* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = load %struct.visor_controlvm_parameters_header*, %struct.visor_controlvm_parameters_header** %4, align 8
  %12 = getelementptr inbounds %struct.visor_controlvm_parameters_header, %struct.visor_controlvm_parameters_header* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %10, %13
  %15 = load %struct.parser_context*, %struct.parser_context** %3, align 8
  %16 = getelementptr inbounds %struct.parser_context, %struct.parser_context* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %41

20:                                               ; preds = %1
  %21 = bitcast %struct.visor_controlvm_parameters_header** %4 to i8*
  %22 = load %struct.visor_controlvm_parameters_header*, %struct.visor_controlvm_parameters_header** %4, align 8
  %23 = getelementptr inbounds %struct.visor_controlvm_parameters_header, %struct.visor_controlvm_parameters_header* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  %27 = load %struct.parser_context*, %struct.parser_context** %3, align 8
  %28 = getelementptr inbounds %struct.parser_context, %struct.parser_context* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.visor_controlvm_parameters_header*, %struct.visor_controlvm_parameters_header** %4, align 8
  %30 = getelementptr inbounds %struct.visor_controlvm_parameters_header, %struct.visor_controlvm_parameters_header* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.parser_context*, %struct.parser_context** %3, align 8
  %33 = getelementptr inbounds %struct.parser_context, %struct.parser_context* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.parser_context*, %struct.parser_context** %3, align 8
  %35 = getelementptr inbounds %struct.parser_context, %struct.parser_context* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.visor_controlvm_parameters_header*, %struct.visor_controlvm_parameters_header** %4, align 8
  %38 = getelementptr inbounds %struct.visor_controlvm_parameters_header, %struct.visor_controlvm_parameters_header* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i8* @parser_string_get(i8* %36, i64 %39)
  store i8* %40, i8** %2, align 8
  br label %41

41:                                               ; preds = %20, %19
  %42 = load i8*, i8** %2, align 8
  ret i8* %42
}

declare dso_local i8* @parser_string_get(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
