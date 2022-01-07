
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
 int S_IRUGO ;

__attribute__((used)) static umode_t qla4_attr_is_visible(int param_type, int param)
{
 switch (param_type) {
 case 262:
  switch (param) {
  case 261:
  case 259:
  case 260:
  case 257:
  case 258:
   return S_IRUGO;
  default:
   return 0;
  }
 case 186:
  switch (param) {
  case 144:
  case 143:
  case 180:
  case 179:
  case 139:
  case 131:
  case 140:
  case 152:
  case 151:
  case 166:
  case 150:
  case 148:
  case 164:
  case 181:
  case 182:
  case 129:
  case 147:
  case 128:
  case 146:
  case 185:
  case 169:
  case 142:
  case 183:
  case 172:
  case 184:
  case 173:
  case 174:
  case 175:
  case 165:
  case 178:
  case 162:
  case 163:
  case 145:
  case 177:
  case 149:
  case 134:
  case 133:
  case 138:
  case 136:
  case 135:
  case 132:
  case 137:
  case 158:
  case 161:
  case 159:
  case 160:
  case 156:
  case 155:
  case 153:
  case 157:
  case 130:
  case 176:
  case 168:
  case 141:
  case 167:
  case 171:
  case 170:
  case 154:
   return S_IRUGO;
  default:
   return 0;
  }
 case 237:
  switch (param) {
  case 232:
  case 218:
  case 220:
  case 231:
  case 234:
  case 208:
  case 214:
  case 201:
  case 213:
  case 207:
  case 188:
  case 187:
  case 189:
  case 197:
  case 196:
  case 233:
  case 206:
  case 200:
  case 235:
  case 194:
  case 190:
  case 191:
  case 193:
  case 192:
  case 236:
  case 228:
  case 225:
  case 216:
  case 217:
  case 221:
  case 229:
  case 230:
  case 226:
  case 224:
  case 223:
  case 227:
  case 222:
  case 219:
  case 195:
  case 215:
  case 210:
  case 205:
  case 211:
  case 198:
  case 209:
  case 204:
  case 203:
  case 202:
  case 212:
  case 199:
   return S_IRUGO;
  default:
   return 0;
  }
 case 256:
  switch (param) {
  case 251:
  case 246:
  case 253:
  case 245:
  case 244:
  case 252:
  case 239:
  case 248:
  case 240:
  case 247:
  case 241:
  case 242:
  case 254:
  case 255:
  case 250:
  case 249:
  case 238:
  case 243:
   return S_IRUGO;
  default:
   return 0;
  }
 case 280:
  switch (param) {
  case 290:
  case 276:
  case 318:
  case 305:
  case 304:
  case 300:
  case 313:
  case 299:
  case 298:
  case 314:
  case 278:
  case 316:
  case 274:
  case 308:
  case 317:
  case 309:
  case 303:
  case 268:
  case 272:
  case 267:
  case 270:
  case 269:
  case 293:
  case 284:
  case 282:
  case 301:
  case 310:
  case 311:
  case 285:
  case 289:
  case 292:
  case 264:
  case 277:
  case 286:
  case 312:
  case 297:
  case 319:
  case 275:
  case 283:
  case 287:
  case 296:
  case 294:
  case 295:
  case 281:
  case 265:
  case 288:
  case 307:
  case 306:
  case 266:
  case 271:
  case 315:
  case 263:
  case 279:
  case 273:
  case 302:
  case 291:
   return S_IRUGO;
  default:
   return 0;
  }
 }

 return 0;
}
