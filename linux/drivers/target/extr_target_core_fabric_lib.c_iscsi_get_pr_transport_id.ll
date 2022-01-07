; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_fabric_lib.c_iscsi_get_pr_transport_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_fabric_lib.c_iscsi_get_pr_transport_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { i8*, i32 }
%struct.t10_pr_registration = type { i8*, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_node_acl*, %struct.t10_pr_registration*, i32*, i8*)* @iscsi_get_pr_transport_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_get_pr_transport_id(%struct.se_node_acl* %0, %struct.t10_pr_registration* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.se_node_acl*, align 8
  %6 = alloca %struct.t10_pr_registration*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.se_node_acl* %0, %struct.se_node_acl** %5, align 8
  store %struct.t10_pr_registration* %1, %struct.t10_pr_registration** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  store i64 4, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %13 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load i8*, i8** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %19 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @sprintf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %11, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %157

27:                                               ; preds = %4
  %28 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %29 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %157

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, 64
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %34, align 1
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %40, %41
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8 44, i8* %43, align 1
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %9, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %47, %48
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  store i8 105, i8* %50, align 1
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %9, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %54, %55
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 44, i8* %57, align 1
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %9, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %11, align 8
  %63 = add i64 %61, %62
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8 48, i8* %64, align 1
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %9, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %68, %69
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8 120, i8* %71, align 1
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, 5
  store i64 %75, i64* %11, align 8
  %76 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %77 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = load i8*, i8** %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %82, %83
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  store i8 %80, i8* %85, align 1
  %86 = load i64, i64* %9, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %9, align 8
  %88 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %89 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* %11, align 8
  %96 = add i64 %94, %95
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8 %92, i8* %97, align 1
  %98 = load i64, i64* %9, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %9, align 8
  %100 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %101 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  %104 = load i8, i8* %103, align 1
  %105 = load i8*, i8** %8, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %11, align 8
  %108 = add i64 %106, %107
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  store i8 %104, i8* %109, align 1
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %9, align 8
  %112 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %113 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 3
  %116 = load i8, i8* %115, align 1
  %117 = load i8*, i8** %8, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %11, align 8
  %120 = add i64 %118, %119
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  store i8 %116, i8* %121, align 1
  %122 = load i64, i64* %9, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %9, align 8
  %124 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %125 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 4
  %128 = load i8, i8* %127, align 1
  %129 = load i8*, i8** %8, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* %11, align 8
  %132 = add i64 %130, %131
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  store i8 %128, i8* %133, align 1
  %134 = load i64, i64* %9, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %9, align 8
  %136 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %137 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 5
  %140 = load i8, i8* %139, align 1
  %141 = load i8*, i8** %8, align 8
  %142 = load i64, i64* %9, align 8
  %143 = load i64, i64* %11, align 8
  %144 = add i64 %142, %143
  %145 = getelementptr inbounds i8, i8* %141, i64 %144
  store i8 %140, i8* %145, align 1
  %146 = load i64, i64* %9, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %9, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* %11, align 8
  %151 = add i64 %149, %150
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  store i8 0, i8* %152, align 1
  %153 = load i64, i64* %9, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %9, align 8
  %155 = load i64, i64* %11, align 8
  %156 = add i64 %155, 7
  store i64 %156, i64* %11, align 8
  br label %157

157:                                              ; preds = %32, %27, %4
  %158 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %159 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %158, i32 0, i32 1
  %160 = call i32 @spin_unlock_irq(i32* %159)
  %161 = load i64, i64* %11, align 8
  %162 = sub i64 0, %161
  %163 = and i64 %162, 3
  store i64 %163, i64* %10, align 8
  %164 = load i64, i64* %10, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %157
  %167 = load i64, i64* %10, align 8
  %168 = load i64, i64* %11, align 8
  %169 = add i64 %168, %167
  store i64 %169, i64* %11, align 8
  br label %170

170:                                              ; preds = %166, %157
  %171 = load i64, i64* %11, align 8
  %172 = load i8*, i8** %8, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 2
  %174 = call i32 @put_unaligned_be16(i64 %171, i8* %173)
  %175 = load i64, i64* %11, align 8
  %176 = add i64 %175, 4
  store i64 %176, i64* %11, align 8
  %177 = load i64, i64* %11, align 8
  %178 = trunc i64 %177 to i32
  ret i32 %178
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @put_unaligned_be16(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
