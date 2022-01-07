; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_pc.c_parport_ECR_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_pc.c_parport_ECR_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.parport_pc_private* }
%struct.parport_pc_private = type { i32 }

@ECR_SPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parport*)* @parport_ECR_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parport_ECR_present(%struct.parport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parport*, align 8
  %4 = alloca %struct.parport_pc_private*, align 8
  %5 = alloca i8, align 1
  store %struct.parport* %0, %struct.parport** %3, align 8
  %6 = load %struct.parport*, %struct.parport** %3, align 8
  %7 = getelementptr inbounds %struct.parport, %struct.parport* %6, i32 0, i32 0
  %8 = load %struct.parport_pc_private*, %struct.parport_pc_private** %7, align 8
  store %struct.parport_pc_private* %8, %struct.parport_pc_private** %4, align 8
  store i8 12, i8* %5, align 1
  %9 = load i8, i8* %5, align 1
  %10 = zext i8 %9 to i32
  %11 = load %struct.parport*, %struct.parport** %3, align 8
  %12 = call i32 @CONTROL(%struct.parport* %11)
  %13 = call i32 @outb(i32 %10, i32 %12)
  %14 = load %struct.parport*, %struct.parport** %3, align 8
  %15 = call i32 @ECONTROL(%struct.parport* %14)
  %16 = call i32 @inb(i32 %15)
  %17 = and i32 %16, 3
  %18 = load i8, i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 3
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %1
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i32
  %25 = xor i32 %24, 2
  %26 = load %struct.parport*, %struct.parport** %3, align 8
  %27 = call i32 @CONTROL(%struct.parport* %26)
  %28 = call i32 @outb(i32 %25, i32 %27)
  %29 = load %struct.parport*, %struct.parport** %3, align 8
  %30 = call i32 @CONTROL(%struct.parport* %29)
  %31 = call i32 @inb(i32 %30)
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %5, align 1
  %33 = load %struct.parport*, %struct.parport** %3, align 8
  %34 = call i32 @ECONTROL(%struct.parport* %33)
  %35 = call i32 @inb(i32 %34)
  %36 = and i32 %35, 2
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  br label %67

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.parport*, %struct.parport** %3, align 8
  %45 = call i32 @ECONTROL(%struct.parport* %44)
  %46 = call i32 @inb(i32 %45)
  %47 = and i32 %46, 3
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %67

50:                                               ; preds = %43
  %51 = load %struct.parport*, %struct.parport** %3, align 8
  %52 = call i32 @ECR_WRITE(%struct.parport* %51, i32 52)
  %53 = load %struct.parport*, %struct.parport** %3, align 8
  %54 = call i32 @ECONTROL(%struct.parport* %53)
  %55 = call i32 @inb(i32 %54)
  %56 = icmp ne i32 %55, 53
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %67

58:                                               ; preds = %50
  %59 = load %struct.parport_pc_private*, %struct.parport_pc_private** %4, align 8
  %60 = getelementptr inbounds %struct.parport_pc_private, %struct.parport_pc_private* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load %struct.parport*, %struct.parport** %3, align 8
  %62 = call i32 @CONTROL(%struct.parport* %61)
  %63 = call i32 @outb(i32 12, i32 %62)
  %64 = load %struct.parport*, %struct.parport** %3, align 8
  %65 = load i32, i32* @ECR_SPP, align 4
  %66 = call i32 @frob_set_mode(%struct.parport* %64, i32 %65)
  store i32 1, i32* %2, align 4
  br label %71

67:                                               ; preds = %57, %49, %41
  %68 = load %struct.parport*, %struct.parport** %3, align 8
  %69 = call i32 @CONTROL(%struct.parport* %68)
  %70 = call i32 @outb(i32 12, i32 %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %58
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @CONTROL(%struct.parport*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ECONTROL(%struct.parport*) #1

declare dso_local i32 @ECR_WRITE(%struct.parport*, i32) #1

declare dso_local i32 @frob_set_mode(%struct.parport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
