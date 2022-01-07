; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_dbg_hcs_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_dbg_hcs_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s hcs_params 0x%x ports=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*, i8*)* @dbg_hcs_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbg_hcs_params(%struct.fotg210_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.fotg210_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %7 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @fotg210_readl(%struct.fotg210_hcd* %6, i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @HCS_N_PORTS(i32 %15)
  %17 = call i32 @fotg210_dbg(%struct.fotg210_hcd* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %14, i32 %16)
  ret void
}

declare dso_local i32 @fotg210_readl(%struct.fotg210_hcd*, i32*) #1

declare dso_local i32 @fotg210_dbg(%struct.fotg210_hcd*, i8*, i8*, i32, i32) #1

declare dso_local i32 @HCS_N_PORTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
