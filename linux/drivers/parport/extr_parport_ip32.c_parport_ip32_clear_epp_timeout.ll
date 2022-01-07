; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ip32.c_parport_ip32_clear_epp_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ip32.c_parport_ip32_clear_epp_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.parport_ip32_private* }
%struct.parport_ip32_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DSR_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"(): %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"cleared\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parport*)* @parport_ip32_clear_epp_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parport_ip32_clear_epp_timeout(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.parport_ip32_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %2, align 8
  %6 = load %struct.parport*, %struct.parport** %2, align 8
  %7 = getelementptr inbounds %struct.parport, %struct.parport* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %9, align 8
  store %struct.parport_ip32_private* %10, %struct.parport_ip32_private** %3, align 8
  %11 = load %struct.parport*, %struct.parport** %2, align 8
  %12 = call i32 @parport_ip32_read_status(%struct.parport* %11)
  %13 = load i32, i32* @DSR_TIMEOUT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %47

17:                                               ; preds = %1
  %18 = load %struct.parport*, %struct.parport** %2, align 8
  %19 = call i32 @parport_ip32_read_status(%struct.parport* %18)
  %20 = load %struct.parport*, %struct.parport** %2, align 8
  %21 = call i32 @parport_ip32_read_status(%struct.parport* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @DSR_TIMEOUT, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %3, align 8
  %26 = getelementptr inbounds %struct.parport_ip32_private, %struct.parport_ip32_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @writeb(i32 %24, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @DSR_TIMEOUT, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %3, align 8
  %35 = getelementptr inbounds %struct.parport_ip32_private, %struct.parport_ip32_private* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @writeb(i32 %33, i32 %37)
  %39 = load %struct.parport*, %struct.parport** %2, align 8
  %40 = call i32 @parport_ip32_read_status(%struct.parport* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @DSR_TIMEOUT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %17, %16
  %48 = load %struct.parport*, %struct.parport** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %53 = call i32 @pr_trace(%struct.parport* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @parport_ip32_read_status(%struct.parport*) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @pr_trace(%struct.parport*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
