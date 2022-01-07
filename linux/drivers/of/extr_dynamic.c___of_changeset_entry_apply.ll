; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c___of_changeset_entry_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c___of_changeset_entry_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_changeset_entry = type { i32, i32, %struct.property*, %struct.TYPE_12__* }
%struct.property = type { i32, %struct.property* }
%struct.TYPE_12__ = type { %struct.property* }

@devtree_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"changeset: add_property failed @%pOF/%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"changeset: remove_property failed @%pOF/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"changeset: update_property failed @%pOF/%s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.of_changeset_entry*)* @__of_changeset_entry_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__of_changeset_entry_apply(%struct.of_changeset_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.of_changeset_entry*, align 8
  %4 = alloca %struct.property*, align 8
  %5 = alloca %struct.property**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.of_changeset_entry* %0, %struct.of_changeset_entry** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %9 = call i32 @__of_changeset_entry_dump(%struct.of_changeset_entry* %8)
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @raw_spin_lock_irqsave(i32* @devtree_lock, i64 %10)
  %12 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %13 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %152 [
    i32 131, label %15
    i32 130, label %20
    i32 132, label %25
    i32 129, label %78
    i32 128, label %99
  ]

15:                                               ; preds = %1
  %16 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %17 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %16, i32 0, i32 3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = call i32 @__of_attach_node(%struct.TYPE_12__* %18)
  br label %155

20:                                               ; preds = %1
  %21 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %22 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %21, i32 0, i32 3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = call i32 @__of_detach_node(%struct.TYPE_12__* %23)
  br label %155

25:                                               ; preds = %1
  %26 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %27 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %26, i32 0, i32 3
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store %struct.property** %29, %struct.property*** %5, align 8
  br label %30

30:                                               ; preds = %53, %25
  %31 = load %struct.property**, %struct.property*** %5, align 8
  %32 = load %struct.property*, %struct.property** %31, align 8
  %33 = icmp ne %struct.property* %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = load %struct.property**, %struct.property*** %5, align 8
  %36 = load %struct.property*, %struct.property** %35, align 8
  %37 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %38 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %37, i32 0, i32 2
  %39 = load %struct.property*, %struct.property** %38, align 8
  %40 = icmp eq %struct.property* %36, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %43 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %42, i32 0, i32 2
  %44 = load %struct.property*, %struct.property** %43, align 8
  %45 = getelementptr inbounds %struct.property, %struct.property* %44, i32 0, i32 1
  %46 = load %struct.property*, %struct.property** %45, align 8
  %47 = load %struct.property**, %struct.property*** %5, align 8
  store %struct.property* %46, %struct.property** %47, align 8
  %48 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %49 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %48, i32 0, i32 2
  %50 = load %struct.property*, %struct.property** %49, align 8
  %51 = getelementptr inbounds %struct.property, %struct.property* %50, i32 0, i32 1
  store %struct.property* null, %struct.property** %51, align 8
  br label %57

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.property**, %struct.property*** %5, align 8
  %55 = load %struct.property*, %struct.property** %54, align 8
  %56 = getelementptr inbounds %struct.property, %struct.property* %55, i32 0, i32 1
  store %struct.property** %56, %struct.property*** %5, align 8
  br label %30

57:                                               ; preds = %41, %30
  %58 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %59 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %58, i32 0, i32 3
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %62 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %61, i32 0, i32 2
  %63 = load %struct.property*, %struct.property** %62, align 8
  %64 = call i32 @__of_add_property(%struct.TYPE_12__* %60, %struct.property* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %57
  %68 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %69 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %68, i32 0, i32 3
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %72 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %71, i32 0, i32 2
  %73 = load %struct.property*, %struct.property** %72, align 8
  %74 = getelementptr inbounds %struct.property, %struct.property* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %70, i32 %75)
  br label %155

77:                                               ; preds = %57
  br label %155

78:                                               ; preds = %1
  %79 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %80 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %79, i32 0, i32 3
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %83 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %82, i32 0, i32 2
  %84 = load %struct.property*, %struct.property** %83, align 8
  %85 = call i32 @__of_remove_property(%struct.TYPE_12__* %81, %struct.property* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %78
  %89 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %90 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %89, i32 0, i32 3
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %93 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %92, i32 0, i32 2
  %94 = load %struct.property*, %struct.property** %93, align 8
  %95 = getelementptr inbounds %struct.property, %struct.property* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %91, i32 %96)
  br label %155

98:                                               ; preds = %78
  br label %155

99:                                               ; preds = %1
  %100 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %101 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %100, i32 0, i32 3
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  store %struct.property** %103, %struct.property*** %5, align 8
  br label %104

104:                                              ; preds = %127, %99
  %105 = load %struct.property**, %struct.property*** %5, align 8
  %106 = load %struct.property*, %struct.property** %105, align 8
  %107 = icmp ne %struct.property* %106, null
  br i1 %107, label %108, label %131

108:                                              ; preds = %104
  %109 = load %struct.property**, %struct.property*** %5, align 8
  %110 = load %struct.property*, %struct.property** %109, align 8
  %111 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %112 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %111, i32 0, i32 2
  %113 = load %struct.property*, %struct.property** %112, align 8
  %114 = icmp eq %struct.property* %110, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %108
  %116 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %117 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %116, i32 0, i32 2
  %118 = load %struct.property*, %struct.property** %117, align 8
  %119 = getelementptr inbounds %struct.property, %struct.property* %118, i32 0, i32 1
  %120 = load %struct.property*, %struct.property** %119, align 8
  %121 = load %struct.property**, %struct.property*** %5, align 8
  store %struct.property* %120, %struct.property** %121, align 8
  %122 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %123 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %122, i32 0, i32 2
  %124 = load %struct.property*, %struct.property** %123, align 8
  %125 = getelementptr inbounds %struct.property, %struct.property* %124, i32 0, i32 1
  store %struct.property* null, %struct.property** %125, align 8
  br label %131

126:                                              ; preds = %108
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.property**, %struct.property*** %5, align 8
  %129 = load %struct.property*, %struct.property** %128, align 8
  %130 = getelementptr inbounds %struct.property, %struct.property* %129, i32 0, i32 1
  store %struct.property** %130, %struct.property*** %5, align 8
  br label %104

131:                                              ; preds = %115, %104
  %132 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %133 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %132, i32 0, i32 3
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %136 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %135, i32 0, i32 2
  %137 = load %struct.property*, %struct.property** %136, align 8
  %138 = call i32 @__of_update_property(%struct.TYPE_12__* %134, %struct.property* %137, %struct.property** %4)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %131
  %142 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %143 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %142, i32 0, i32 3
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %146 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %145, i32 0, i32 2
  %147 = load %struct.property*, %struct.property** %146, align 8
  %148 = getelementptr inbounds %struct.property, %struct.property* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_12__* %144, i32 %149)
  br label %155

151:                                              ; preds = %131
  br label %155

152:                                              ; preds = %1
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %152, %151, %141, %98, %88, %77, %67, %20, %15
  %156 = load i64, i64* %6, align 8
  %157 = call i32 @raw_spin_unlock_irqrestore(i32* @devtree_lock, i64 %156)
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %2, align 4
  br label %204

162:                                              ; preds = %155
  %163 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %164 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  switch i32 %165, label %203 [
    i32 131, label %166
    i32 130, label %171
    i32 132, label %176
    i32 129, label %184
    i32 128, label %192
  ]

166:                                              ; preds = %162
  %167 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %168 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %167, i32 0, i32 3
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = call i32 @__of_attach_node_sysfs(%struct.TYPE_12__* %169)
  br label %203

171:                                              ; preds = %162
  %172 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %173 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %172, i32 0, i32 3
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = call i32 @__of_detach_node_sysfs(%struct.TYPE_12__* %174)
  br label %203

176:                                              ; preds = %162
  %177 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %178 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %177, i32 0, i32 3
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %181 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %180, i32 0, i32 2
  %182 = load %struct.property*, %struct.property** %181, align 8
  %183 = call i32 @__of_add_property_sysfs(%struct.TYPE_12__* %179, %struct.property* %182)
  br label %203

184:                                              ; preds = %162
  %185 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %186 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %185, i32 0, i32 3
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %189 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %188, i32 0, i32 2
  %190 = load %struct.property*, %struct.property** %189, align 8
  %191 = call i32 @__of_remove_property_sysfs(%struct.TYPE_12__* %187, %struct.property* %190)
  br label %203

192:                                              ; preds = %162
  %193 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %194 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %193, i32 0, i32 3
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %197 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %196, i32 0, i32 2
  %198 = load %struct.property*, %struct.property** %197, align 8
  %199 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %200 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @__of_update_property_sysfs(%struct.TYPE_12__* %195, %struct.property* %198, i32 %201)
  br label %203

203:                                              ; preds = %162, %192, %184, %176, %171, %166
  store i32 0, i32* %2, align 4
  br label %204

204:                                              ; preds = %203, %160
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @__of_changeset_entry_dump(%struct.of_changeset_entry*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__of_attach_node(%struct.TYPE_12__*) #1

declare dso_local i32 @__of_detach_node(%struct.TYPE_12__*) #1

declare dso_local i32 @__of_add_property(%struct.TYPE_12__*, %struct.property*) #1

declare dso_local i32 @pr_err(i8*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @__of_remove_property(%struct.TYPE_12__*, %struct.property*) #1

declare dso_local i32 @__of_update_property(%struct.TYPE_12__*, %struct.property*, %struct.property**) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__of_attach_node_sysfs(%struct.TYPE_12__*) #1

declare dso_local i32 @__of_detach_node_sysfs(%struct.TYPE_12__*) #1

declare dso_local i32 @__of_add_property_sysfs(%struct.TYPE_12__*, %struct.property*) #1

declare dso_local i32 @__of_remove_property_sysfs(%struct.TYPE_12__*, %struct.property*) #1

declare dso_local i32 @__of_update_property_sysfs(%struct.TYPE_12__*, %struct.property*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
