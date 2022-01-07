; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_print_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_print_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.CommandList = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [26 x i8] c"%s: LUN:%8phN CDB:%16phN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, i8*, %struct.CommandList*)* @hpsa_print_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_print_cmd(%struct.ctlr_info* %0, i8* %1, %struct.CommandList* %2) #0 {
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.CommandList*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.CommandList* %2, %struct.CommandList** %6, align 8
  %9 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %10 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %14 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %19 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i8*, i8** %5, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %22, i32* %23, i32* %24)
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
