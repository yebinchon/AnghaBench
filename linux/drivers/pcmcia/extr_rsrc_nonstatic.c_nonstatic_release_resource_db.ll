; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_nonstatic_release_resource_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_nonstatic_release_resource_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { %struct.socket_data* }
%struct.socket_data = type { %struct.resource_map, %struct.resource_map, %struct.resource_map }
%struct.resource_map = type { %struct.resource_map* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_socket*)* @nonstatic_release_resource_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nonstatic_release_resource_db(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca %struct.pcmcia_socket*, align 8
  %3 = alloca %struct.socket_data*, align 8
  %4 = alloca %struct.resource_map*, align 8
  %5 = alloca %struct.resource_map*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %2, align 8
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %7 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %6, i32 0, i32 0
  %8 = load %struct.socket_data*, %struct.socket_data** %7, align 8
  store %struct.socket_data* %8, %struct.socket_data** %3, align 8
  %9 = load %struct.socket_data*, %struct.socket_data** %3, align 8
  %10 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %10, i32 0, i32 0
  %12 = load %struct.resource_map*, %struct.resource_map** %11, align 8
  store %struct.resource_map* %12, %struct.resource_map** %4, align 8
  br label %13

13:                                               ; preds = %24, %1
  %14 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %15 = load %struct.socket_data*, %struct.socket_data** %3, align 8
  %16 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %15, i32 0, i32 2
  %17 = icmp ne %struct.resource_map* %14, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %20 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %19, i32 0, i32 0
  %21 = load %struct.resource_map*, %struct.resource_map** %20, align 8
  store %struct.resource_map* %21, %struct.resource_map** %5, align 8
  %22 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %23 = call i32 @kfree(%struct.resource_map* %22)
  br label %24

24:                                               ; preds = %18
  %25 = load %struct.resource_map*, %struct.resource_map** %5, align 8
  store %struct.resource_map* %25, %struct.resource_map** %4, align 8
  br label %13

26:                                               ; preds = %13
  %27 = load %struct.socket_data*, %struct.socket_data** %3, align 8
  %28 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %28, i32 0, i32 0
  %30 = load %struct.resource_map*, %struct.resource_map** %29, align 8
  store %struct.resource_map* %30, %struct.resource_map** %4, align 8
  br label %31

31:                                               ; preds = %42, %26
  %32 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %33 = load %struct.socket_data*, %struct.socket_data** %3, align 8
  %34 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %33, i32 0, i32 1
  %35 = icmp ne %struct.resource_map* %32, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %38 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %37, i32 0, i32 0
  %39 = load %struct.resource_map*, %struct.resource_map** %38, align 8
  store %struct.resource_map* %39, %struct.resource_map** %5, align 8
  %40 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %41 = call i32 @kfree(%struct.resource_map* %40)
  br label %42

42:                                               ; preds = %36
  %43 = load %struct.resource_map*, %struct.resource_map** %5, align 8
  store %struct.resource_map* %43, %struct.resource_map** %4, align 8
  br label %31

44:                                               ; preds = %31
  %45 = load %struct.socket_data*, %struct.socket_data** %3, align 8
  %46 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %46, i32 0, i32 0
  %48 = load %struct.resource_map*, %struct.resource_map** %47, align 8
  store %struct.resource_map* %48, %struct.resource_map** %4, align 8
  br label %49

49:                                               ; preds = %60, %44
  %50 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %51 = load %struct.socket_data*, %struct.socket_data** %3, align 8
  %52 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %51, i32 0, i32 0
  %53 = icmp ne %struct.resource_map* %50, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %56 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %55, i32 0, i32 0
  %57 = load %struct.resource_map*, %struct.resource_map** %56, align 8
  store %struct.resource_map* %57, %struct.resource_map** %5, align 8
  %58 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %59 = call i32 @kfree(%struct.resource_map* %58)
  br label %60

60:                                               ; preds = %54
  %61 = load %struct.resource_map*, %struct.resource_map** %5, align 8
  store %struct.resource_map* %61, %struct.resource_map** %4, align 8
  br label %49

62:                                               ; preds = %49
  ret void
}

declare dso_local i32 @kfree(%struct.resource_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
