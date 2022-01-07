; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_switch_find_xdomain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_switch_find_xdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_xdomain = type { i64, i64, i64, i64 }
%struct.tb_switch = type { %struct.tb_port*, %struct.TYPE_3__ }
%struct.tb_port = type { %struct.TYPE_4__*, %struct.tb_xdomain* }
%struct.TYPE_4__ = type { %struct.tb_switch* }
%struct.TYPE_3__ = type { i32 }
%struct.tb_xdomain_lookup = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tb_xdomain* (%struct.tb_switch*, %struct.tb_xdomain_lookup*)* @switch_find_xdomain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tb_xdomain* @switch_find_xdomain(%struct.tb_switch* %0, %struct.tb_xdomain_lookup* %1) #0 {
  %3 = alloca %struct.tb_xdomain*, align 8
  %4 = alloca %struct.tb_switch*, align 8
  %5 = alloca %struct.tb_xdomain_lookup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tb_port*, align 8
  %8 = alloca %struct.tb_xdomain*, align 8
  store %struct.tb_switch* %0, %struct.tb_switch** %4, align 8
  store %struct.tb_xdomain_lookup* %1, %struct.tb_xdomain_lookup** %5, align 8
  store i32 1, i32* %6, align 4
  br label %9

9:                                                ; preds = %112, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %12 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %10, %14
  br i1 %15, label %16, label %115

16:                                               ; preds = %9
  %17 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %18 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %17, i32 0, i32 0
  %19 = load %struct.tb_port*, %struct.tb_port** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %19, i64 %21
  store %struct.tb_port* %22, %struct.tb_port** %7, align 8
  %23 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %24 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %23, i32 0, i32 1
  %25 = load %struct.tb_xdomain*, %struct.tb_xdomain** %24, align 8
  %26 = icmp ne %struct.tb_xdomain* %25, null
  br i1 %26, label %27, label %93

27:                                               ; preds = %16
  %28 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %29 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %28, i32 0, i32 1
  %30 = load %struct.tb_xdomain*, %struct.tb_xdomain** %29, align 8
  store %struct.tb_xdomain* %30, %struct.tb_xdomain** %8, align 8
  %31 = load %struct.tb_xdomain_lookup*, %struct.tb_xdomain_lookup** %5, align 8
  %32 = getelementptr inbounds %struct.tb_xdomain_lookup, %struct.tb_xdomain_lookup* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %27
  %36 = load %struct.tb_xdomain*, %struct.tb_xdomain** %8, align 8
  %37 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.tb_xdomain*, %struct.tb_xdomain** %8, align 8
  %42 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.tb_xdomain_lookup*, %struct.tb_xdomain_lookup** %5, align 8
  %45 = getelementptr inbounds %struct.tb_xdomain_lookup, %struct.tb_xdomain_lookup* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @uuid_equal(i64 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load %struct.tb_xdomain*, %struct.tb_xdomain** %8, align 8
  store %struct.tb_xdomain* %50, %struct.tb_xdomain** %3, align 8
  br label %116

51:                                               ; preds = %40, %35
  br label %92

52:                                               ; preds = %27
  %53 = load %struct.tb_xdomain_lookup*, %struct.tb_xdomain_lookup** %5, align 8
  %54 = getelementptr inbounds %struct.tb_xdomain_lookup, %struct.tb_xdomain_lookup* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load %struct.tb_xdomain_lookup*, %struct.tb_xdomain_lookup** %5, align 8
  %59 = getelementptr inbounds %struct.tb_xdomain_lookup, %struct.tb_xdomain_lookup* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.tb_xdomain*, %struct.tb_xdomain** %8, align 8
  %62 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %57
  %66 = load %struct.tb_xdomain_lookup*, %struct.tb_xdomain_lookup** %5, align 8
  %67 = getelementptr inbounds %struct.tb_xdomain_lookup, %struct.tb_xdomain_lookup* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.tb_xdomain*, %struct.tb_xdomain** %8, align 8
  %70 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load %struct.tb_xdomain*, %struct.tb_xdomain** %8, align 8
  store %struct.tb_xdomain* %74, %struct.tb_xdomain** %3, align 8
  br label %116

75:                                               ; preds = %65, %57, %52
  %76 = load %struct.tb_xdomain_lookup*, %struct.tb_xdomain_lookup** %5, align 8
  %77 = getelementptr inbounds %struct.tb_xdomain_lookup, %struct.tb_xdomain_lookup* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.tb_xdomain_lookup*, %struct.tb_xdomain_lookup** %5, align 8
  %82 = getelementptr inbounds %struct.tb_xdomain_lookup, %struct.tb_xdomain_lookup* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.tb_xdomain*, %struct.tb_xdomain** %8, align 8
  %85 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load %struct.tb_xdomain*, %struct.tb_xdomain** %8, align 8
  store %struct.tb_xdomain* %89, %struct.tb_xdomain** %3, align 8
  br label %116

90:                                               ; preds = %80, %75
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91, %51
  br label %111

93:                                               ; preds = %16
  %94 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %95 = call i64 @tb_port_has_remote(%struct.tb_port* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  %98 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %99 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.tb_switch*, %struct.tb_switch** %101, align 8
  %103 = load %struct.tb_xdomain_lookup*, %struct.tb_xdomain_lookup** %5, align 8
  %104 = call %struct.tb_xdomain* @switch_find_xdomain(%struct.tb_switch* %102, %struct.tb_xdomain_lookup* %103)
  store %struct.tb_xdomain* %104, %struct.tb_xdomain** %8, align 8
  %105 = load %struct.tb_xdomain*, %struct.tb_xdomain** %8, align 8
  %106 = icmp ne %struct.tb_xdomain* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load %struct.tb_xdomain*, %struct.tb_xdomain** %8, align 8
  store %struct.tb_xdomain* %108, %struct.tb_xdomain** %3, align 8
  br label %116

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109, %93
  br label %111

111:                                              ; preds = %110, %92
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %9

115:                                              ; preds = %9
  store %struct.tb_xdomain* null, %struct.tb_xdomain** %3, align 8
  br label %116

116:                                              ; preds = %115, %107, %88, %73, %49
  %117 = load %struct.tb_xdomain*, %struct.tb_xdomain** %3, align 8
  ret %struct.tb_xdomain* %117
}

declare dso_local i64 @uuid_equal(i64, i32) #1

declare dso_local i64 @tb_port_has_remote(%struct.tb_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
