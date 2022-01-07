; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_misc.c_afs_abort_to_error.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_misc.c_afs_abort_to_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EACCES = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBADRQC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ENOLCK = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@EKEYREJECTED = common dso_local global i32 0, align 4
@EKEYEXPIRED = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_abort_to_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %227 [
    i32 13, label %5
    i32 27, label %8
    i32 30, label %11
    i32 129, label %14
    i32 134, label %17
    i32 133, label %20
    i32 128, label %23
    i32 135, label %26
    i32 132, label %29
    i32 131, label %32
    i32 137, label %35
    i32 130, label %38
    i32 138, label %41
    i32 136, label %44
    i32 181, label %47
    i32 180, label %50
    i32 179, label %53
    i32 187, label %56
    i32 178, label %59
    i32 185, label %62
    i32 184, label %65
    i32 196, label %68
    i32 197, label %71
    i32 188, label %74
    i32 192, label %77
    i32 195, label %80
    i32 174, label %83
    i32 176, label %86
    i32 186, label %89
    i32 172, label %92
    i32 194, label %95
    i32 171, label %98
    i32 198, label %101
    i32 190, label %104
    i32 182, label %107
    i32 183, label %110
    i32 189, label %113
    i32 193, label %116
    i32 173, label %119
    i32 191, label %122
    i32 175, label %125
    i32 177, label %128
    i32 140, label %131
    i32 146, label %134
    i32 156, label %137
    i32 155, label %140
    i32 152, label %143
    i32 142, label %146
    i32 150, label %149
    i32 151, label %152
    i32 143, label %155
    i32 139, label %158
    i32 148, label %161
    i32 154, label %164
    i32 147, label %167
    i32 145, label %170
    i32 141, label %173
    i32 149, label %176
    i32 144, label %179
    i32 153, label %182
    i32 164, label %185
    i32 160, label %188
    i32 163, label %191
    i32 158, label %194
    i32 161, label %197
    i32 162, label %200
    i32 169, label %203
    i32 168, label %206
    i32 157, label %209
    i32 166, label %212
    i32 159, label %215
    i32 167, label %218
    i32 165, label %221
    i32 170, label %224
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @EACCES, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %2, align 4
  br label %230

8:                                                ; preds = %1
  %9 = load i32, i32* @EFBIG, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %230

11:                                               ; preds = %1
  %12 = load i32, i32* @EROFS, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %230

14:                                               ; preds = %1
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %230

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %230

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEDIUM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %230

23:                                               ; preds = %1
  %24 = load i32, i32* @EEXIST, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %230

26:                                               ; preds = %1
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %230

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %230

32:                                               ; preds = %1
  %33 = load i32, i32* @EEXIST, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %230

35:                                               ; preds = %1
  %36 = load i32, i32* @ENOSPC, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %230

38:                                               ; preds = %1
  %39 = load i32, i32* @EDQUOT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %230

41:                                               ; preds = %1
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %230

44:                                               ; preds = %1
  %45 = load i32, i32* @ENXIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %230

47:                                               ; preds = %1
  %48 = load i32, i32* @EEXIST, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %230

50:                                               ; preds = %1
  %51 = load i32, i32* @EREMOTEIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %230

53:                                               ; preds = %1
  %54 = load i32, i32* @EEXIST, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %230

56:                                               ; preds = %1
  %57 = load i32, i32* @EREMOTEIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %230

59:                                               ; preds = %1
  %60 = load i32, i32* @ENOMEDIUM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %230

62:                                               ; preds = %1
  %63 = load i32, i32* @ENOMEDIUM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %230

65:                                               ; preds = %1
  %66 = load i32, i32* @ENOMEDIUM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %230

68:                                               ; preds = %1
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %230

71:                                               ; preds = %1
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %230

74:                                               ; preds = %1
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %230

77:                                               ; preds = %1
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %230

80:                                               ; preds = %1
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %230

83:                                               ; preds = %1
  %84 = load i32, i32* @EFBIG, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %230

86:                                               ; preds = %1
  %87 = load i32, i32* @ENOENT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %230

89:                                               ; preds = %1
  %90 = load i32, i32* @EEXIST, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %230

92:                                               ; preds = %1
  %93 = load i32, i32* @ENOENT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %230

95:                                               ; preds = %1
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %230

98:                                               ; preds = %1
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %230

101:                                              ; preds = %1
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %230

104:                                              ; preds = %1
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %230

107:                                              ; preds = %1
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %230

110:                                              ; preds = %1
  %111 = load i32, i32* @EBUSY, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %230

113:                                              ; preds = %1
  %114 = load i32, i32* @EBADRQC, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %230

116:                                              ; preds = %1
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %230

119:                                              ; preds = %1
  %120 = load i32, i32* @EREMOTEIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %230

122:                                              ; preds = %1
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %230

125:                                              ; preds = %1
  %126 = load i32, i32* @EACCES, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  br label %230

128:                                              ; preds = %1
  %129 = load i32, i32* @EREMOTEIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %230

131:                                              ; preds = %1
  %132 = load i32, i32* @EPERM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %230

134:                                              ; preds = %1
  %135 = load i32, i32* @ENOENT, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %230

137:                                              ; preds = %1
  %138 = load i32, i32* @EACCES, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %230

140:                                              ; preds = %1
  %141 = load i32, i32* @EBUSY, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %230

143:                                              ; preds = %1
  %144 = load i32, i32* @EEXIST, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %230

146:                                              ; preds = %1
  %147 = load i32, i32* @ENOTDIR, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %230

149:                                              ; preds = %1
  %150 = load i32, i32* @EISDIR, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %230

152:                                              ; preds = %1
  %153 = load i32, i32* @EFBIG, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %230

155:                                              ; preds = %1
  %156 = load i32, i32* @ENOSPC, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %2, align 4
  br label %230

158:                                              ; preds = %1
  %159 = load i32, i32* @EROFS, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %2, align 4
  br label %230

161:                                              ; preds = %1
  %162 = load i32, i32* @EMLINK, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %2, align 4
  br label %230

164:                                              ; preds = %1
  %165 = load i32, i32* @EDEADLK, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %2, align 4
  br label %230

167:                                              ; preds = %1
  %168 = load i32, i32* @ENAMETOOLONG, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %2, align 4
  br label %230

170:                                              ; preds = %1
  %171 = load i32, i32* @ENOLCK, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %2, align 4
  br label %230

173:                                              ; preds = %1
  %174 = load i32, i32* @ENOTEMPTY, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %2, align 4
  br label %230

176:                                              ; preds = %1
  %177 = load i32, i32* @ELOOP, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %2, align 4
  br label %230

179:                                              ; preds = %1
  %180 = load i32, i32* @ENOMEDIUM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %230

182:                                              ; preds = %1
  %183 = load i32, i32* @EDQUOT, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %2, align 4
  br label %230

185:                                              ; preds = %1
  %186 = load i32, i32* @EPROTO, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %2, align 4
  br label %230

188:                                              ; preds = %1
  %189 = load i32, i32* @EPROTO, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %2, align 4
  br label %230

191:                                              ; preds = %1
  %192 = load i32, i32* @EKEYREJECTED, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %2, align 4
  br label %230

194:                                              ; preds = %1
  %195 = load i32, i32* @EKEYREJECTED, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %2, align 4
  br label %230

197:                                              ; preds = %1
  %198 = load i32, i32* @EPROTO, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %2, align 4
  br label %230

200:                                              ; preds = %1
  %201 = load i32, i32* @EKEYREJECTED, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %2, align 4
  br label %230

203:                                              ; preds = %1
  %204 = load i32, i32* @EKEYREJECTED, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %2, align 4
  br label %230

206:                                              ; preds = %1
  %207 = load i32, i32* @EKEYREJECTED, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %2, align 4
  br label %230

209:                                              ; preds = %1
  %210 = load i32, i32* @EKEYREJECTED, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %2, align 4
  br label %230

212:                                              ; preds = %1
  %213 = load i32, i32* @EKEYEXPIRED, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %2, align 4
  br label %230

215:                                              ; preds = %1
  %216 = load i32, i32* @EKEYREJECTED, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %2, align 4
  br label %230

218:                                              ; preds = %1
  %219 = load i32, i32* @EKEYREJECTED, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %2, align 4
  br label %230

221:                                              ; preds = %1
  %222 = load i32, i32* @EKEYREJECTED, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %2, align 4
  br label %230

224:                                              ; preds = %1
  %225 = load i32, i32* @ENOTSUPP, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %2, align 4
  br label %230

227:                                              ; preds = %1
  %228 = load i32, i32* @EREMOTEIO, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %2, align 4
  br label %230

230:                                              ; preds = %227, %224, %221, %218, %215, %212, %209, %206, %203, %200, %197, %194, %191, %188, %185, %182, %179, %176, %173, %170, %167, %164, %161, %158, %155, %152, %149, %146, %143, %140, %137, %134, %131, %128, %125, %122, %119, %116, %113, %110, %107, %104, %101, %98, %95, %92, %89, %86, %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %5
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
