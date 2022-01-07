; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_free_unplugged_children.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_free_unplugged_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i64, %struct.tb_port*, %struct.TYPE_5__ }
%struct.tb_port = type { %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { %struct.tb_switch* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_switch*)* @icm_free_unplugged_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icm_free_unplugged_children(%struct.tb_switch* %0) #0 {
  %2 = alloca %struct.tb_switch*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_port*, align 8
  store %struct.tb_switch* %0, %struct.tb_switch** %2, align 8
  store i32 1, i32* %3, align 4
  br label %5

5:                                                ; preds = %68, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %8 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ule i32 %6, %10
  br i1 %11, label %12, label %71

12:                                               ; preds = %5
  %13 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %14 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %13, i32 0, i32 1
  %15 = load %struct.tb_port*, %struct.tb_port** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %15, i64 %17
  store %struct.tb_port* %18, %struct.tb_port** %4, align 8
  %19 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %20 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %12
  %24 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %25 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %32 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i32 @tb_xdomain_remove(%struct.TYPE_6__* %33)
  %35 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %36 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %35, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %36, align 8
  br label %67

37:                                               ; preds = %23, %12
  %38 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %39 = call i64 @tb_port_has_remote(%struct.tb_port* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %43 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.tb_switch*, %struct.tb_switch** %45, align 8
  %47 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %41
  %51 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %52 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.tb_switch*, %struct.tb_switch** %54, align 8
  %56 = call i32 @remove_unplugged_switch(%struct.tb_switch* %55)
  %57 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %58 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %57, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %58, align 8
  br label %65

59:                                               ; preds = %41
  %60 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %61 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.tb_switch*, %struct.tb_switch** %63, align 8
  call void @icm_free_unplugged_children(%struct.tb_switch* %64)
  br label %65

65:                                               ; preds = %59, %50
  br label %66

66:                                               ; preds = %65, %37
  br label %67

67:                                               ; preds = %66, %30
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %3, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %5

71:                                               ; preds = %5
  ret void
}

declare dso_local i32 @tb_xdomain_remove(%struct.TYPE_6__*) #1

declare dso_local i64 @tb_port_has_remote(%struct.tb_port*) #1

declare dso_local i32 @remove_unplugged_switch(%struct.tb_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
