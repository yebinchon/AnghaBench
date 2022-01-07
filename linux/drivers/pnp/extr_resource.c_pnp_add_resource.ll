; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_resource.c_pnp_add_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_resource.c_pnp_add_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_resource = type { %struct.resource }
%struct.resource = type { i32 }
%struct.pnp_dev = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"can't add resource %pR\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%pR\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pnp_resource* @pnp_add_resource(%struct.pnp_dev* %0, %struct.resource* %1) #0 {
  %3 = alloca %struct.pnp_resource*, align 8
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.pnp_resource*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %8 = call %struct.pnp_resource* @pnp_new_resource(%struct.pnp_dev* %7)
  store %struct.pnp_resource* %8, %struct.pnp_resource** %6, align 8
  %9 = load %struct.pnp_resource*, %struct.pnp_resource** %6, align 8
  %10 = icmp ne %struct.pnp_resource* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %12, i32 0, i32 0
  %14 = load %struct.resource*, %struct.resource** %5, align 8
  %15 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.resource* %14)
  store %struct.pnp_resource* null, %struct.pnp_resource** %3, align 8
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.pnp_resource*, %struct.pnp_resource** %6, align 8
  %18 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %17, i32 0, i32 0
  %19 = load %struct.resource*, %struct.resource** %5, align 8
  %20 = bitcast %struct.resource* %18 to i8*
  %21 = bitcast %struct.resource* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pnp_resource*, %struct.pnp_resource** %6, align 8
  %26 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %28, i32 0, i32 0
  %30 = load %struct.resource*, %struct.resource** %5, align 8
  %31 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %30)
  %32 = load %struct.pnp_resource*, %struct.pnp_resource** %6, align 8
  store %struct.pnp_resource* %32, %struct.pnp_resource** %3, align 8
  br label %33

33:                                               ; preds = %16, %11
  %34 = load %struct.pnp_resource*, %struct.pnp_resource** %3, align 8
  ret %struct.pnp_resource* %34
}

declare dso_local %struct.pnp_resource* @pnp_new_resource(%struct.pnp_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, %struct.resource*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
